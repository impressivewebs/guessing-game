all: README.md readme_content

README.md:
	touch README.md

readme_content:
	echo "# Guessing Game" >> README.md
	echo "\r" >> README.md
	echo "## This readme file was built on:" >> README.md
	date +'%A, %B %d, %Y' >> README.md
	echo "\r" >> README.md
	echo "## Number of lines of code in guessinggame.sh:" >> README.md
	cat guessinggame.sh | wc -l >> README.md
