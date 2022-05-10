open_tmux () {
        tmux a -t $1 &> /dev/null

        if [ $? != 0 ]
        then
                tmux new -s $1
        fi
        
}

bugs () {
        open_tmux "bugs"
}

mdev () {
        cd ~/github/mentat/bash
        open_tmux "mentat"
}
