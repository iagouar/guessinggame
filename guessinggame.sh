#!/usr/bin/env bash
# File: guessinggame.sh

#this command used to exclude any sub-directories that may be in the current directory
file_num () {
	ls -l | egrep -v "^total|^d" | wc -l
}

read -p "Guess number of files: " guessnum

while [[ $guessnum -ne $(file_num) ]] 
do {
echo "You entered $guessnum"

if [[ $guessnum -gt $(file_num) ]] 
then
	echo "Sorry, too high"
	read -p "Guess again: " guessnum
elif [[ $guessnum -lt $(file_num) ]]
then	
	echo "Sorry, too low"
	read -p "Guess again: " guessnum
fi	
}
done

echo "You guessed right, way to go!"