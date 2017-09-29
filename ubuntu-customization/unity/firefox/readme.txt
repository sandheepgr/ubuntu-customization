Converting of firefox to gnome native app style

References:
https://github.com/chpii/Headerbar
https://www.maketecheasier.com/integrate-firefox-to-gnome-shell/

Fix for the transparent background
----------------------------------
Install stylish addon
Create a new style and paste the content of stylish-gnome-theme-menu-bg-fix.css


Contents of the Header bar github page
---------------------------------------
Step 1

Install extension that enables system notifications instead of pop-up windows

Install latest Firefox GNOME theme

Restart Firefox
Open Firefox menu and select Customize...
go to GNOME Tweaks in bottom left
check Relief buttons on navigation toolbar
check Bold tab label
set Maximum tab width to Stretch
check Hide the history dropmarker in the URL bar
Screenshot

Step 2

Install extension that hides tabs if there is only one tab, so saves vertical space of your screen

Open Firefox menu and select Customize...
Move New Tab button to the toolbar
Go to about:config and change browser.tabs.animate to false to make closing the last tab instant.
This avoids arrows appearing while closing last tab:

Screenshot

Screenshot

Step 3

Install extension that hides titlebar and puts window controls in toolbar

Open Firefox menu and select Add-ons, find HTitle preferences
Select Hide titlebar: Always
Screenshot

Step 4

Install extension to apply custom styles

GNOME 3.16+ does not use Metacity, so you can now go to Step 5

If you want decoration theme that works with GNOME 3.12 or less, just replace 3.14 in commands below with 3.12 or use alternate methods

Restart Firefox
Download window decoration theme and place it in standard directory for themes using command line:
$ wget -P ~/.local/share/themes/3.14/metacity-1 https://raw.githubusercontent.com/chpii/Headerbar/master/3.14/metacity-1/metacity-theme-3.xml

alternatively download ZIP and copy needed theme folder in ~/.local/share/themes

Switch to installed window decoration theme using command line:

$ gsettings set org.gnome.desktop.wm.preferences theme "3.14"

alternatively use GNOME Tweak Tool
Step 5

Install userstyle that improves paddings and make it look like other GNOME applications

Headerbar style for GNOME 3.14-
Headerbar style for GNOME 3.16+
GNOME styled menu List view
Screenshot

Dark theme

Install this userstyle instead:

Headerbar style for GNOME 3.16+ Dark Theme
