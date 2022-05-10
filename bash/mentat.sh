source workon.sh
source git.sh
source commands.sh

msource () {
	source mentat.sh
}

list_commands () {
	for key in "${!commands[@]}"
	do
		echo "$key -> ${commands[$key]}"
	done
}
