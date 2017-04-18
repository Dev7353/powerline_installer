#!/bin/bash
powerline_package="https://github.com/banga/powerline-shell.git"
powerline_fonts="https://github.com/powerline/fonts.git"

cat << "EOF"

______                      _ _                   _____ _          _ _ 
| ___ \                    | (_)                 /  ___| |        | | |
| |_/ /____      _____ _ __| |_ _ __   ___ ______\ `--.| |__   ___| | |
|  __/ _ \ \ /\ / / _ \ '__| | | '_ \ / _ \______|`--. \ '_ \ / _ \ | |
| | | (_) \ V  V /  __/ |  | | | | | |  __/      /\__/ / | | |  __/ | |
\_|  \___/ \_/\_/ \___|_|  |_|_|_| |_|\___|      \____/|_| |_|\___|_|_|
                                                                       
                                                                       
                  _           _        _ _                             
                 (_)         | |      | | |                            
                  _ _ __  ___| |_ __ _| | | ___ _ __                   
                 | | '_ \/ __| __/ _` | | |/ _ \ '__|                  
                 | | | | \__ \ || (_| | | |  __/ |                     
                 |_|_| |_|___/\__\__,_|_|_|\___|_|

EOF
cp config ~/

#go to home
cd $HOME

git clone "$powerline_package"
cd powerline-shell
cp config.py.dist config.py
python install.py

#go home
cd $HOME

#copy the .bashrc stuff into file ...
cat config >> .bashrc

#install fonts
git clone "$powerline_fonts"
cd fonts
./install.sh
cd  $HOME
rm config
rm -rf fonts
echo "##### Now setup a profile an enjoy the powerline-shell #####"
