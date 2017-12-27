#!/usr/bin/env bash

function getresponse {
	echo "How many files are in the current directory?"
	read response

	numfiles=0
	for files in $(ls)
	do
		let numfiles=$numfiles+1
	done

    if [[ $response -eq $numfiles ]]
	then
		echo "That's correct! Congratulations!"
	else
    	if [[ $response -lt $numfiles ]]
		then
			echo "That's too low! Try again."
			getresponse
		else
			echo "That's too high! Try again."
			getresponse
		fi
	fi
}

getresponse
