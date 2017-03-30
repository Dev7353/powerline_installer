#!/bin/bash

#variables

dir="powerline"
powerline_package="https://github.com/banga/powerline-shell.git"
input="function _update_ps1() { PS1="$(~/powerline/powerline-shell.py $? 2> /dev/null)" } if [ "$TERM" != "linux" ]; then PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND" fi"

#go to home
cd $HOME

# check if projects dir is there

if [ ! -d "$dir" ]
	then
		mkdir "$dir";
fi

cd "$dir"
git clone "$powerline_package"
cd powerline-shell
cp config.py.dist config.py
python install.py

#copy the .bashrc stuff into file ...
if [! -d ".profile"]
	then
		mkdir .profile
fi

echo "$input" >> .profile
#append bashrc content here
