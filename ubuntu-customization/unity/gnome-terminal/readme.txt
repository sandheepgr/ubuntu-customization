Removing the padding in gnome-terminal
=====================================
Replace the gtk.css in ~/.config/gtk-3.0/gtk.css with the one in the current directory or add the padding styles 

Styles 
------
Replace the %gconf.xml in the ~/.gconf/apps/gnome-terminal/profiles/Default with the one in the current directory
The filename should be only %gconf.xml ( remove the extra names ) and can be put under Profile0 , Profile1 etc folders 

For having a profile restored as a new one , we do the following
1. Create a folder Profile0 or Profile1 ( based on the already existing profiles ) and put the respective %gconf.xml file in there
2. Restart gnome-terminal

