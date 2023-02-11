#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo "$($PSQL "TRUNCATE TABLE games, teams")"

cat games.csv | while IFS="," read year round winner opponent winner_goals opponent_goals

  do
  if [[ $year != "year" ]]
    then
    echo "$($PSQL "INSERT INTO teams(name) VALUES ('$winner') ON CONFLICT (name) DO NOTHING")"
    echo "$($PSQL "INSERT INTO teams(name) VALUES ('$opponent') ON CONFLICT (name) DO NOTHING")"
  fi
  # Get team_ids and save as variables
  WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$winner'")
  OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$opponent'")
  if [[ $year != "round" ]]
    then

      echo "$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES ($year,'$round', $WINNER_ID, $OPPONENT_ID, $winner_goals, $opponent_goals)")"

  fi

  done



