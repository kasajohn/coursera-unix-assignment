all: readme

readme:
	echo "# Guessing Game" > README.md
	echo "run the script and follow the instructions!" >> README.md
	printf "date and time of make: " >> README.md
	date -R >> README.md
	printf "the lines of code the  script contains are: " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md
