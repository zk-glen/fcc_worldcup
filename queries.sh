#! /bin/bash

PSQL="psql --username=freecodecamp --dbname=worldcup --no-align --tuples-only -c"

# Do not change code above this line. Use the PSQL variable above to query your database.

echo -e "\nTotal number of goals in all games from winning teams:"
echo "$($PSQL "SELECT SUM(winner_goals) FROM games")"
#CORRECT 68
 
echo -e "\nTotal number of goals in all games from both teams combined:"
echo "$($PSQL "SELECT SUM(winner_goals) + SUM(opponent_goals) FROM games")"
#CORRECT 90

echo -e "\nAverage number of goals in all games from the winning teams:"
echo "$($PSQL "SELECT AVG(winner_goals) FROM games")"
#CORRECT 2.1250000000000000

echo -e "\nAverage number of goals in all games from the winning teams rounded to two decimal places:"
echo "$($PSQL "SELECT ROUND(AVG(winner_goals),2) FROM games")"
#CORRECT 2.13

echo -e "\nAverage number of goals in all games from both teams:"
echo "$($PSQL "SELECT AVG(winner_goals + opponent_goals) FROM games")"
#CORRECT 2.8125000000000000

echo -e "\nMost goals scored in a single game by one team:"
echo "$($PSQL "SELECT GREATEST(MAX(winner_goals), MAX(opponent_goals)) FROM games")"
#CORRECT 7

echo -e "\nNumber of games where the winning team scored more than two goals:"
echo "$($PSQL "SELECT COUNT(winner_goals) FROM games WHERE winner_goals > 2")"
#CORRECT 6

echo -e "\nWinner of the 2018 tournament team name:"
echo "$($PSQL "SELECT teams.name FROM games JOIN teams ON games.winner_id = teams.team_id WHERE games.year = 2018 AND games.round = 'Final'")"
#CORRECT FRANCE

echo -e "\nList of teams who played in the 2014 'Eighth-Final' round:"
echo "$($PSQL "SELECT teams.name FROM games JOIN teams ON (games.winner_id = teams.team_id OR games.opponent_id = teams.team_id) WHERE games.year = 2014 AND games.round = 'Eighth-Final' ORDER BY name ASC")"
#CORRECT
#Algeria
# Argentina
# Belgium
# Brazil
# Chile
# Colombia
# Costa Rica
# France
# Germany
# Greece
# Mexico
# Netherlands
# Nigeria
# Switzerland
# United States
# Uruguay

echo -e "\nList of unique winning team names in the whole data set:"
echo "$($PSQL "SELECT DISTINCT teams.name FROM games JOIN teams ON games.winner_id = teams.team_id ORDER BY name ASC")"
#WRONG
# Argentina
# Belgium
# Brazil
# Colombia
# Costa Rica
# Croatia
# England
# France
# Germany
# Netherlands
# Russia
# Sweden
# Uruguay

echo -e "\nYear and team name of all the champions:"
echo "$($PSQL "SELECT games.year, teams.name FROM games JOIN teams ON games.winner_id = teams.team_id WHERE round='Final' ORDER BY teams.name DESC")"
#CORRECT
# 2014|Germany
# 2018|France


echo -e "\nList of teams that start with 'Co':"
echo "$($PSQL "SELECT name FROM teams WHERE name LIKE 'Co%'")"
#CORRECT
# Colombia
# Costa Rica

