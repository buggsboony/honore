#!/bin/bash
#Hotkeys candidates :    CTRL+ALT+Return OR Meta+Return   => honore ok
#Hotkeys candidates :    Meta+F7   => honore mushi

configdir=~/.config/honore

res="${configdir}/res" #resources folder
muchi="${res}/01-muchimuchi.mp3"

r=$((RANDOM %3 +2))
checkbom="${res}/0${r}-checketbom.mp3"

# echo $1
# echo $muchi
# echo $checkbom

if [ "$1" == "ok" ] ; then
    echo "Check & Bom !"
    playsound "$checkbom"
else
    echo "Muchimuchi ..."
    playsound "$muchi";
fi


