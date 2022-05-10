gpush () {
	git push origin $1
}

g () {
	if [ $1 ]
	then
		case $1 in
			p)
				gpush $2
				;;
			d)
				git diff
				;;
			s)
				git status
				;;
			*)
				echo "Unknown command."
				;;
		esac
	else
		echo "Not enough arguments."
	fi
}
