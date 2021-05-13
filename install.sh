#!/bin/bash

#install stuff
what=${PWD##*/}   
extension=.sh
res="res" #resources folder
configdir=~/.config/$what
mkdir -p $configdir
#peut être extension vide

echo "$0"
echo "$1"
echo "$2"
echo "Set executable..."
chmod +x $what$extension
#echo "lien symbolique vers usr bin"
sudo ln -s "$PWD/$what$extension" /usr/bin/$what
#link resources
sudo ln -s "$PWD/$res" "$configdir/$res"
echo "done."
