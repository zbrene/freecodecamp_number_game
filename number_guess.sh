#!/bin/bash

#script that generates a random number between 1 and 1000

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

#Your script should only ask for input from the user to get the username and to take guesses.

SECRET_NUMBER=$(($RANDOM%1000))

#function to play guessing game
GUESSING_GAME(){

  #get guess
  
  read USER_GUESS
  GUESS_COUNT=$(($GUESS_COUNT+1))

  #if not an integer
  if ! [[ $USER_GUESS =~ ^[0-9]+$ ]]
  then
    echo -e "\nThat is not an integer, guess again:"
    GUESSING_GAME

  else
     #if secret number is lower
      if [[ $USER_GUESS -gt $SECRET_NUMBER ]]
      
      then 
        echo "It's lower than that, guess again:"
        GUESSING_GAME
      else
      
        #if secret number is higher
        if [[ $USER_GUESS -lt $SECRET_NUMBER ]]
    
        then 
          echo "It's higher than that, guess again:"
          GUESSING_GAME

        else
        #if the guess is correct
        echo -e "\nYou guessed it in $GUESS_COUNT tries. The secret number was $SECRET_NUMBER. Nice job!"

        #insert number of guesses and user id into games
        USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME'")
        GAME_RESULT=$($PSQL "INSERT INTO games(user_id, number_of_guesses) VALUES($USER_ID, $GUESS_COUNT)" )

      exit

      fi
    fi
  fi
}




#ask for username
echo "Enter your username:"
read USERNAME

#check if username exists
USERNAME_RESULT=$($PSQL "SELECT username FROM users WHERE username = '$USERNAME'")

if [[ -z $USERNAME_RESULT ]]
then
  
  #insert new username
  USERNAME_RESULT=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")

  echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
  echo -e "\nGuess the secret number between 1 and 1000:"

  GUESSING_GAME
  

else
  #get past game info
  NUMBER_OF_GAMES_PLAYED=$($PSQL "SELECT COUNT(game_id) FROM games INNER JOIN users USING(user_id) WHERE username = '$USERNAME'")
  BEST_GUESS_RESULT=$($PSQL "SELECT MIN(number_of_guesses) FROM games INNER JOIN users USING(user_id) WHERE username = '$USERNAME'")

  echo -e "\nWelcome back, $USERNAME! You have played $NUMBER_OF_GAMES_PLAYED games, and your best game took $BEST_GUESS_RESULT guesses."
  echo -e "\nGuess the secret number between 1 and 1000:"

  GUESSING_GAME
  
  
fi