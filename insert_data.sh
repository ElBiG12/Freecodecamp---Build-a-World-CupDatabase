#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

IS_FIRSTLINE=1
ADDED_TEAMS_STACK=""
while IFS=, read -r year round winner opponent winner_goals opponent_goals
do
  # START: Read rows of the csv file
  if ((IS_FIRSTLINE))
  then
    ((IS_FIRSTLINE--))
  else
    # START: Add the teams
    # check winner team
    if [[ $ADDED_TEAMS_STACK != *"$winner"* ]];
    then
      echo "It's not there!"
      TEAM_EXIST=$($PSQL "select name from teams where name='$winner'")
      
      if [ -z "$TEAM_EXIST" ]; then
        ADDED_TEAM=$($PSQL "INSERT INTO teams (name) values('$winner')")
        echo "Team added ($winner)"
        ADDED_TEAMS_STACK="$ADDED_TEAMS_STACK$winner,"
      else
        echo "Team already exists"
      fi
    fi
    # check opponent team
    if [[ $ADDED_TEAMS_STACK != *"$opponent"* ]];
    then
      TEAM_EXIST=$($PSQL "select name from teams where name='$opponent'")
      
      if [ -z "$TEAM_EXIST" ]; then
        ADDED_TEAM=$($PSQL "INSERT INTO teams (name) values('$opponent')")
        echo "Team added ($opponent)"
        ADDED_TEAMS_STACK="$ADDED_TEAMS_STACK$opponent,"
      else
        echo "Team already exists"
      fi
    fi
    # END: Add the teams

    # START: Add the games
    ($PSQL "INSERT INTO games (year, round, winner_id, opponent_id, winner_goals, opponent_goals) values('$year', '$round', (select team_id from teams where name = '$winner'), (select team_id from teams where name = '$opponent'), '$winner_goals', '$opponent_goals')")
    # END: Add the games
  fi
  # END: Read rows of the csv file

done < games.csv
echo $ADDED_TEAMS_STACK