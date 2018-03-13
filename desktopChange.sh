#!/bin/bash

#PATH TO THE WALLPAPERS_FOLDER
WALLPAPERS_FOLDER="Pictures/wallpapers"
USER_NAME="your user name"

#Allow cron to change gnome settings
PID=$(pgrep gnome-session)
export DBUS_SESSION_BUS_ADDRESS=$(grep -z DBUS_SESSION_BUS_ADDRESS /proc/$PID/environ|cut -d= -f2-)

#get number of images
NUM_IMAGES="$(ls -1q ~/$WALLPAPERS_FOLDER/img*.jpg | wc -l)"

# This changes the wallpaper setting: it updates immediately
gsettings set org.gnome.desktop.background picture-uri file:///home/$USER_NAME/$WALLPAPERS_FOLDER/img$((RANDOM%NUM_IMAGES)).jpg
