date1="$(date)"
echo "The title is guessing game" > readme.md
echo "make file run on $date1" >> readme.md
echo "Number of lines :" >>readme.md
wc -l guessinggame.sh | egrep -o "[0-9]+" >> readme.md
