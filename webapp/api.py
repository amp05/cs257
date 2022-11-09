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

@api.route('/contestants/') 
def get_contestants():
    ''' Returns a list of all the contestants in our database.

        By default, the list is presented in alphabetical order
        by name. 

        Returns an empty list if there's any database failure.
    '''
    query = '''SELECT contestant_name, season_number, age, hometown, occupation
               FROM contestants ORDER BY '''

    sort_argument = flask.request.args.get('sort')
    if sort_argument == 'season_number':
        query += 'season_number, contestant_name'
    else:
        query += 'contestant_name'

    contestant_list = []
    try:
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query, tuple())
        for row in cursor:
            contestant = {'contestant_name':row[0],
                      'season_name':row[1],
                      'age':row[2],
                      'hometown':row[3],
                      'occupation':row[4]}
            contestant_list.append(contestant)
        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)

    return json.dumps(contestant_list)