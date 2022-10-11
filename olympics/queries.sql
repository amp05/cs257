--List all the NOCs (National Olympic Committees), in alphabetical order by abbreviation. These entities, by the way, are mostly equivalent to countries. But in some cases, you might find that a portion of a country participated in a particular games (e.g. one guy from Newfoundland in 1904) or some other oddball situation.

SELECT noc, team 
FROM teams
ORDER BY noc ASC;

--List the names of all the athletes from Jamaica. If your database design allows it, sort the athletes by last name.

SELECT athletes.athlete_name
FROM athletes
WHERE id in (SELECT DISTINCT athlete_id FROM event_results WHERE team_id in (SELECT id FROM teams WHERE team='Jamaica'))
ORDER BY athlete_name ASC;


--List all the medals won by Greg Louganis, sorted by year. Include whatever fields in this output that you think appropriate.

SELECT event_results.medal, events.event_name, games.game_year
FROM event_results, events, games
WHERE event_results.event_id = events.id 
AND event_results.medal != 'NA'
AND games.id = event_results.games_id 
AND event_results.athlete_id=71665
ORDER BY games.game_year ASC;


--List all the NOCs and the number of gold medals they have won, in decreasing order of the number of gold medals.

SELECT teams.noc, COUNT(event_results.medal) as gold_medals
FROM teams,event_results
WHERE event_results.team_id = teams.id
AND event_results.medal = 'Gold'
GROUP BY teams.noc
ORDER BY COUNT(event_results.medal) DESC;
