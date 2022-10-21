#!/usr/bin/env python3
'''
    olympics.py
    Jeff Ondich, Aldo Polanco, Oct 20, 2022
'''
from gc import get_count
import sys
import psycopg2
import config
import argparse

def get_parsed_arguments():
    parser = argparse.ArgumentParser(description='Query the Olympics database. Use athletes to find list of athletes from a specified NOC, medals to find all NOCs by number of gold medals, and countries to find countries alphabetically.')
    parser.add_argument('function', metavar='function', help='specify the query you want to make (athletes, medals, or countries)')
    parser.add_argument('--searchNOC', metavar='searchNOC', help='search by this NOC abbreviation')
    parsed_arguments = parser.parse_args()
    return parsed_arguments


def get_connection():
    ''' Returns a database connection object with which you can create cursors,
        issue SQL queries, etc. This function is extremely aggressive about
        failed connections--it just prints an error message and kills the whole
        program. Sometimes that's the right choice, but it depends on your
        error-handling needs. '''
    try:
        return psycopg2.connect(database=config.database,
                                user=config.user,
                                password=config.password)
    except Exception as e:
        print(e, file=sys.stderr)
        exit()


def get_athlete_by_noc(noc):
    ''' Returns a list of the full names of all athletes in the database
        whose NOCs are equal to the specified search string. '''
    athletes = []
    try:
        query = '''SELECT athletes.athlete_name
                    FROM athletes
                    WHERE id in (SELECT DISTINCT athlete_id FROM event_results WHERE team_id in (SELECT id FROM teams WHERE noc=%s))
                    ORDER BY athlete_name ASC;'''
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query, (noc,))
        for row in cursor:
            given_name = row[0]
            athletes.append(f'{given_name}')

    except Exception as e:
        print(e, file=sys.stderr)

    connection.close()
    return athletes

def get_NOCs():
    ''' Returns a list of all the NOCs and the amount of gold medals in decreasing order'''
    nocs = []
    try:
        query = '''SELECT teams.noc, COUNT(event_results.medal) as gold_medals
                FROM teams,event_results
                WHERE event_results.team_id = teams.id
                AND event_results.medal = 'Gold'
                GROUP BY teams.noc
                ORDER BY COUNT(event_results.medal) DESC;'''
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query)
        for row in cursor:
            noc = row[0]
            medal = row[1]
            nocs.append(f'{noc} with {medal} gold medals')
    except Exception as e:
        print(e, file=sys.stderr)

    connection.close()
    return nocs

def get_countries():
    ''' Returns a list of all the teams and NOC abbreviation'''
    nocs = []
    try:
        query = '''SELECT noc, team 
                    FROM teams
                    ORDER BY noc ASC;'''
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query)
        for row in cursor:
            noc = row[0]
            team = row[1]
            nocs.append(f'{noc}: {team}')

    except Exception as e:
        print(e, file=sys.stderr)

    connection.close()
    return nocs

def get_list(arguments):
    if (arguments.function).lower() == 'athletes':
        return get_athlete_by_noc(arguments.searchNOC)
    elif (arguments.function).lower() == 'medals':
        return get_NOCs()
    elif (arguments.function).lower() == 'countries':
        return get_countries()
    else:
        return ["Invalid operation: See -h for usage statement."]

def main():
    arguments = get_parsed_arguments()
    for i in get_list(arguments):
        print(i)


if __name__ == '__main__':
    main()