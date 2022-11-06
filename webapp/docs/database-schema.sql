CREATE TABLE contestants (
        contestant_name TEXT,
        season_number INTEGER,
        age INTEGER,
        hometown TEXT,
        occupation TEXT,
        african_american BIT,
        latin_american BIT,
        asian_american BIT,
    );

CREATE TABLE season (
        season_name TEXT,
        season_number INTEGER,
        num_contestant INTEGER,
    );

CREATE TABLE tribe (
        season_number INTEGER,
        tribe_name TEXT,
        size INTEGER,
        poc INTEGER,
        merged BIT

    );

