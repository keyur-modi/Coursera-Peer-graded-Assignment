#!/usr/bin/env bash
num=$(ls | wc -l)

function guess_filenum {
	while [[ 0 -lt 1 ]]
	do
		echo "Guess how many files are in the current directory: "
		read guess
		if [[ $guess -eq $num ]]
		then
			echo "Awesome!"
			echo "You finally guessed it!"
			echo "======================================================"
			echo "Here are the list of files in the directory:-"
			echo "--------------------------------------"
			for f in $(ls)
			do
				echo "  - $f "
			done
			echo "--------------------------------------"
			echo "If you want to play again just run the script again..."
			echo "======================================================"
			break
		else
			if [[ $guess -gt $num ]]
			then
				echo "There is less files than you guess please try again: "
				echo "--------------------------------------"
			else
				echo "There is more files than you guess please try again: "
				echo "--------------------------------------"
			fi
		fi
	done
}
echo "======================================================"
echo "Welcome to the Game"
echo "This is a guessing game!"
echo "Are you ready?"
echo "======================================================"

guess_filenum
