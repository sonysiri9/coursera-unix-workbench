#!/usr/bin/env bash
filenum=$(ls | wc -l)

function guess_filenum {
	read guess
	if [[ $guess -eq $filenum ]]
	then
		echo "Amazing"
		echo "Hooray"
		echo "  So we have ..."
		for f in $(ls)
		do
			echo "  - $f and "
		done
		echo "    ... and that was it."
	else
		if [[ $guess -gt $filenum ]]
		then
			echo "There is less... try again and press Enter :"
			guess_filenum
		else
			echo "There is more... try again and press Enter :"
			guess_filenum
		fi
	fi
}
echo "Welcome to the guessing game!"
echo "Guess how many files are in the current directory (pretend you don't know) and press Enter :"
guess_filenum
