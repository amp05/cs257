 CREATE TABLE athletes (
        id INTEGER,
        athlete_name TEXT,
    );

 CREATE TABLE events (
        id INTEGER,
        event_name TEXT,
        sport_name TEXT
    );

 CREATE TABLE games (
        id INTEGER,
        season TEXT,
        city TEXT,
        game_year INTEGER,
        game TEXT
    );

 CREATE TABLE teams (
        id INTEGER,
        noc TEXT,
        team TEXT
    );

CREATE TABLE event_results (
        athlete_id INTEGER,
        athlete_sex TEXT,
        athlete_weight INTEGER,
        athlete_height INTEGER,
        athlete_age INTEGER,
        games_id INTEGER,
        team_id INTEGER,
        event_id INTEGER,
        medal TEXT
    );