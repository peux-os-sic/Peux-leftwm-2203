#!/bin/bash


##################################################
## Author - DN-debug
## Description - Peux leftwm setup 
##################################################

# copy configurations

if zenity --question --text="Want to copy the configurations?"
then
    echo "changing directory"
    cd ../
    mkdir $HOME/tmp
    cp -r Peux-leftwm-2203/ $HOME/tmp/
    rm -rf $HOME/tmp/Peux-leftwm-2203/install.sh
    rm -rf $HOME/tmp/Peux-leftwm-2203/.git
    rm -rf $HOME/tmp/Peux-leftwm-2203/details.md
    notify-send "Copied the configurations to $HOME/tmp/"
else
    notify-send "skipping the setup!"
fi

# cleanup

rm -rf /tmp/fetcher/Peux-leftwm-2203
notify-send "Done!"
