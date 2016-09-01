Current configuration based on 
https://github.com/tony/tmux-config

Powerline setup instructions
http://askubuntu.com/questions/283908/how-can-i-install-and-use-powerline-plugin

Important: 
export TERM=xterm-256color in bashrc or zshrc

set-option -g default-terminal "screen-256color" in tmux.conf file

Another important change is the setting of locate to UTF-8
1. Run the command locale
2. If the result contains the locale as en_IN and not en_IN.UTF-8, we need to update
3. Run following commands
   a. sudo locale-gen en_IN
   b. sudo dpkg-reconfigure locales
4. Change the values in the /etc/default/locales to : 
   LANG="en_IN.UTF-8"                                                                                 
   LANGUAGE="en_IN.UTF-8"
5. Logout and login back
6. Run the locale again and it should show en_IN.UTF-8 for all entries
