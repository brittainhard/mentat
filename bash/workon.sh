export GITHUBPATH=$HOME/github

open_tmux () {
	tmux a -t $1 &> /dev/null

	if [ $? != 0 ]
	then
		tmux new -s $1
	fi
        
}

workon () {
	if [ $1 ]
	then
		cd $GITHUBPATH/$1 &> /dev/null
		if [ $? != 0 ]
		then
			echo "Project \"$1\" not found."
		else
			open_tmux $1
		fi
	else
		echo "Please provide a project name."
	fi
}

alias won="workon"
