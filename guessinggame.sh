#!/bin/bash
# file: guessinggame.sh

echo "guess how many files are inside current directory... Type a number and then press Enter"
read number

countfiles() {
	files=$(ls -p | grep -v / | wc -l)
	echo $files
}

while [[ $number -ne $(countfiles) ]] || ! [[ $number =~ [0-9] ]]
do
	if [[ $number =~ [0-9] ]]
	then
		if [[ $number -lt $(countfiles) ]]
		then
			echo "the number you guessed is SMALLER than the number of files"
			read number
		elif [[ $number -gt $(countfiles) ]]
		then
			echo "the number you guessed is BIGGER than the number of files"
			read number
		else
			echo "Congratulations you found the number of files inside this directory"
			exit
		fi
	else
		echo "only numeric characters are allowed"
		read number
	fi
done
echo "Congratulations you found the number of files inside this directory"

