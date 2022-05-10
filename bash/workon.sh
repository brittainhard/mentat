export GITHUBPATH=$HOME/github

open_tmux () {
        tmux a -t $1 &> /dev/null

        if [ $? != 0 ]
        then
                tmux new -s $1
        fi
        
}

workon () {
        cd $GITHUBPATH/$1 &> /dev/null

        if [ $? != 0 ]
        then
                echo "Project \"$1\" not found."
        else
                open_tmux $1
        fi
}
