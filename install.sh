#!/bin/bash

#variables

powerline_package="https://github.com/banga/powerline-shell.git"

#go to home
cd $HOME

# check if projects dir is there

if [ ! -d "projects" ]
	then
		mkdir projects;
fi

cd projects
git clone "$powerline_package"
cd powerline-shell
cp config.py.dist config.py
python install.py

#copy the .bashrc stuff into file ...
