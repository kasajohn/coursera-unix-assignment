all: readme

readme:
	echo "# Guessing Game" > README.md
	echo "run the script and follow the instructions!\n" >> README.md
	printf "date and time of make: " >> README.md
	date -R >> README.md
	printf "\nthe  script contains $$(wc -l guessinggame.sh | egrep -o "[0-9]+") lines of code." >> README.md

clean:
	rm README.md
