The ZSH setup is based on the following project page 
https://github.com/robbyrussell/oh-my-zsh

ZSH installation
----------------
The oh my zsh requires zsh shell
It can be installed using 
sudo apt-get install zsh

Ref: https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH


Installing oh my sh 
-------------------
Execute the following in a shell
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

Configuration
-------------
The configuration is covered in the .zshrc file 

ZSH plugin 
----------
using zsh-autosuggestions for the suggestions 
URL :  https://github.com/zsh-users/zsh-autosuggestions
Follow the installation instructions for the oh-my-zsh section

1. git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
2. Add the zsh-autosuggestions for plugins in zshrc
   plugins=(zsh-autosuggestions)


