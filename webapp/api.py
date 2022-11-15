'''
    api.py
    Jeff Ondich, 25 April 2016
    Updated 8 November 2021
    Aldo Polanco, James Berger, Alex Widman 9 November 2022

    Tiny Flask API to support the tiny survivor web application.
'''
import sys
import flask
import json
import config
import psycopg2

api = flask.Blueprint('api', __name__)

def get_connection():
    ''' Returns a connection to the database described in the
        config module. May raise an exception as described in the
        documentation for psycopg2.connect. '''
    return psycopg2.connect(database=config.database,
                            user=config.user,
                            password=config.password)


@api.route('/help/', strict_slashes=False)
def get_help():
    with open("docs/api-help.txt") as f:
        return f.readlines()


@api.route('/contestants/', strict_slashes=False)
def get_contestants_matching():
    '''Returns a list of all contestants whose names include search_text
    
    By default, the list is presented in alphabetical order
    by name. 

    Returns an empty list if there's any database failure.
    '''
    name = flask.request.args.get('name', default ='')

    query = '''SELECT contestant_name, season_number, age, hometown, occupation
               FROM contestants 
               ORDER BY contestant_name'''

    matching_contestants = []
    try:
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query)
        for row in cursor:
            contestant = {'contestant_name':row[0],
                    'season_name':row[1],
                    'age':row[2],
                    'hometown':row[3],
                    'occupation':row[4]}
            if name.lower() in row[0].lower():
                matching_contestants.append(contestant)
        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)

    return json.dumps(matching_contestants)

@api.route('/connections/')
def find_missing_link():
    query = '''SELECT contestants.contestant_name, contestants.season_number
               FROM contestants
               ORDER BY contestants.season_number'''
    source = flask.request.args.get('source')
    target = flask.request.args.get('target')
    contestants = []
    
    try:
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query)
        for row in cursor:
            contestant = {'contestant_name':row[0], 'season_number':row[1]}
            contestants.append(contestant)
        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)

    
    contestant_al = {}
    for c1 in contestants:
        if c1['contestant_name'] not in contestant_al:
            contestant_al[c1['contestant_name']] = [c1['contestant_name']]
        for c2 in contestants:
            if c1['season_number'] == c2['season_number']:
                contestant_al[c1['contestant_name']].append(c2['contestant_name'])
    path = find_link(contestant_al, source, target)
    if len(path) < 1:
        path = ["No path found"]
    return json.dumps(path)



def find_link(graph, start, end):
    # maintain a queue of paths
    # 1 degree of separation
    if end in graph[start]:
        return [start, end]
    # 2 degrees of separation
    for node in graph[start]:
         if node in graph[end]:
            return [start, node, end]
    for n1 in graph[start]:
        for n2 in graph[end]:
            if n1 in graph[n2]:
                return [start, n1, n2, end]
    for n1 in graph[start]:
        for n2 in graph[end]:
            for n3 in [n for n in graph[n1] if n in graph[n2]]:
                return [start, n1, n3, n2, end]
    #TODO: fix 5th degree connections
    return []
    
