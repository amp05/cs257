'''
    convert.py
    Jeff Ondich & Aldo Polanco, 10 Oct 2022
    Started in class, polished later

    Illustrating how to use Python dictionaries, etc. to
    start converting the data. This is based on the Kaggle
    Olympics data, and assumes you have a copy of the
    athlete_events.csv file.

    In this small example, I am imagining three tables as shown
    below. The point of this code sample is to illustrate how you
    could connect the event_results table's ID fields to the
    appropriate IDs in the athletes and events tables.

    # Like "Simone Arianne Biles"
    CREATE TABLE athletes (
        id INTEGER,
        name TEXT
    );

    # Like "Gymnastics Women's Individual All-Around"
    CREATE TABLE events (
        id INTEGER,
        name TEXT
    );

    # One row represents one athlete competing in one event
    # at one time.
    CREATE TABLE event_results (
        athlete_id INTEGER,
        event_id INTEGER,
        medal TEXT
    );

    When I run this code, I end up with three new files: athletes.csv,
    events.csv, and event_results.csv. One of the lines of athletes.csv is:

        11495,Simone Arianne Biles

    One of the rows in events.csv is:

        213,Gymnastics Women's Individual All-Around

    And one of the rows in event_results.csv is:

        11495,213,Gold

    When you combine those three rows from three different tables, you can
    conclude that Simone Biles won the Gold medal in the
    Gymnastics Women's Individual All-Around. This sample program hasn't
    included year information or city information or anything like that.
    But I hope this code helps you understand one way to approach converting
    raw data into structured tabular data.
'''

import csv

# Strategy:
# (1) Create a dictionary that maps athlete IDs to athlete names
#       and then save the results in athletes.csv
# (2) Create a dictionary that maps event names to event IDs
#       and then save the results in events.csv
# (3) For each row in the original athlete_events.csv file, build a row
#       for our new event_results.csv table
#
# NOTE: I'm doing these three things in three different passes through
# the athlete_events.csv files. This is not necessary--you can do it all
# in a single pass.


# (1) Create a dictionary that maps athlete_id -> athlete_name
#       and then save the results in athletes.csv
athletes = {}
with open('athlete_events.csv') as original_data_file,\
        open('athletes.csv', 'w') as athletes_file:
    reader = csv.reader(original_data_file)
    writer = csv.writer(athletes_file)
    heading_row = next(reader) # eat up and ignore the heading row of the data file
    for row in reader:
        athlete_id = row[0]
        athlete_name = row[1]
        #athlete_birth_year = row[9] - row[3]
        if athlete_id not in athletes:
            athletes[athlete_id] = athlete_name
            writer.writerow([athlete_id, athlete_name])

# (2) Create a dictionary that maps event_name -> event_id
#       and then save the results in events.csv
events = {}
with open('athlete_events.csv') as original_data_file,\
        open('events.csv', 'w') as events_file:
    reader = csv.reader(original_data_file)
    writer = csv.writer(events_file)
    heading_row = next(reader) # eat up and ignore the heading row of the data file
    for row in reader:
        event_name = row[13]
        sport_name = row[12]
        if event_name not in events:
            event_id = len(events) + 1
            events[event_name] = event_id
            writer.writerow([event_id, event_name, sport_name])

games = {}
with open('athlete_events.csv') as original_data_file,\
        open('games.csv', 'w') as events_file:
    reader = csv.reader(original_data_file)
    writer = csv.writer(events_file)
    heading_row = next(reader) # eat up and ignore the heading row of the data file
    for row in reader:
        season = row[10]
        city = row[11]
        year = row[9]
        game = row[8]
        if game not in games:
            game_id = len(games) + 1
            games[game] = game_id
            writer.writerow([game_id, season, city, year, game])

teams = {}
with open('athlete_events.csv') as original_data_file,\
        open('teams.csv', 'w') as events_file:
    reader = csv.reader(original_data_file)
    writer = csv.writer(events_file)
    heading_row = next(reader) # eat up and ignore the heading row of the data file
    for row in reader:
        noc = row[7]
        team = row[6]
        if team not in teams:
            team_id = len(teams) + 1
            teams[team] = team_id
            writer.writerow([team_id, noc, team])

# (3) For each row in the original athlete_events.csv file, build a row
#       for our new event_results.csv table
with open('athlete_events.csv') as original_data_file,\
        open('event_results.csv', 'w') as event_results_file:
    reader = csv.reader(original_data_file)
    writer = csv.writer(event_results_file)
    heading_row = next(reader) # eat up and ignore the heading row of the data file
    for row in reader:
        athlete_id = row[0]
        event_name = row[13]
        athlete_sex = row[2] 
        athlete_weight = 0 if "NA" == row[5] else round(float(row[5])) 
        athlete_height = 0 if "NA" == row[4] else round(float(row[4]))
        athlete_age = 0 if "NA" == row[3] else round(float(row[3]))
        game_id = games[row[8]]
        team_id = teams[row[6]]
        event_id = events[event_name]
        medal = row[14]
        writer.writerow([athlete_id, athlete_sex, athlete_weight, athlete_height, athlete_age, game_id, team_id, event_id, medal])

