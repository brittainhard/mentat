source workon.sh
source git.sh
source commands.sh

msource () {
	source mentat.sh
}

list_commands () {
	local -n arg=$1
	for key in "${!arg[@]}"
	do
		echo "$key -> ${arg[$key]}"
	done
}

m () {
	${commands[$1]}
}
