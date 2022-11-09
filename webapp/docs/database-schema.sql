CREATE TABLE contestants (
        contestant_name TEXT,
        age INTEGER,
        hometown TEXT,
        occupation TEXT,
        season_number INTEGER,
        finish INTEGER,
        gender TEXT,
        african_american BIT,
        asian_american BIT,
        latin_american BIT
        
    );

CREATE TABLE season (
        season_number INTEGER,
        season_name TEXT,
        num_contestant INTEGER
    );

CREATE TABLE tribe (
        season_number INTEGER,
        tribe_name TEXT,
        size INTEGER,
        merged INTEGER,
        poc INTEGER

    );

