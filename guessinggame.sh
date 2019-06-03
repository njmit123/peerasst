
let numfiles="$(ls|wc -l)"
echo "Guess number of files"

function guess {
	read inp

	while [[ $inp != $numfiles ]]
	do
		echo "Your guess was $inp"
		if [[ $inp -lt $numfiles ]]
		then
			echo "Too low!"
			read inp
		elif [[ $inp -gt $numfiles ]]
		then
			echo "Too high!"
			read inp
		fi
	done
	
	if [[ $inp -eq $numfiles ]]
	then
		echo "Right guess!"
	fi
}

guess
