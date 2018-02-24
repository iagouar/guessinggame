README.md:
	touch README.md
	echo "#The Guessing Game Project" > README.md
	echo "The makefile was run at:" >> README.md
	date >> README.md
	echo "The number of lines in the file are: " >> README.md
	wc -l guessinggame.sh >> README.md


