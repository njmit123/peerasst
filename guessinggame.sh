let numfiles="$(ls|wc -l)"
echo "Guess number of files!"
read inp

while [[ $inp != $numfiles ]]
do
	echo "your guess was $inp"
	if [[ inp -lt $numfiles ]]
	then
		echo "too low"
		read inp
	elif [[ $inp -gt $numfiles ]]
	then
		echo "too high"
		read inp
	fi
done

if [[ $inp -eq $numfiles ]]
then
	echo "Right guess!"
fi
