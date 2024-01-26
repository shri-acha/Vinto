#!/bin/zsh

if [ -n "$1" ]; then
	prwd=$(pwd )
	cd "$prwd/$1"
	direc=$(fzf)
else
    direc=$(fzf)
fi

# Check if a file is selected
if [ -n "$direc" ]; then
    vim "$direc"
fi

