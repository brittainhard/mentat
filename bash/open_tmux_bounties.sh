#!/bin/bash

tmux a -t bugs &> /dev/null

if [ $? != 0 ]
then
        tmux new -s bugs
fi
