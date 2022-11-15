'''
    api.py
    Jeff Ondich, 25 April 2016
    Updated 8 November 2021
    Aldo Polanco, James Berger, Alex Widman 9 November 2022

    Tiny Flask API to support the tiny books web application.
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
            print(row[0])
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
