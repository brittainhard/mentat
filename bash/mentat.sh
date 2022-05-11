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

is_value () {
	local -n arg1=$1
	if [ ${arg1[$2]} ]
	then
		return 0
	else
		return 1
	fi
}

m () {
	local COMMAND=""
	local -n arg=${commands[$1]}
	COMMAND+=" ${commands[$1]}"
	COMMAND+=" ${arg[$2]}"
	echo $COMMAND
	${COMMAND}
}
