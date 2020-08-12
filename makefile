readme : guessinggame.sh
	touch README.md
	echo "======================================================\n" > README.md
	echo "Title of the project: The guess game_Peer-graded Assignment" >> README.md
	echo "\nThe Date on make ran at: " >> README.md
	date >> README.md
	echo "\nNumber of lines in guessinggame.sh:" >> README.md
	cat guessinggame.sh | wc -l >> README.md
	echo "\n======================================================" >> README.md
