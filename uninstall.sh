#!/bin/bash

#install stuff
what=${PWD##*/}   
extension=.sh

res="res" #resources folder
configdir=~/.config/$what
mkdir -p $configdir
#peut être extension vide


#peut être extension vide 
 
echo "killing running instances"
killall $what

echo "remove symbolic link from usr bin"
sudo rm /usr/bin/$what

echo "done."

