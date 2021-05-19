#!/bin/bash
#Hotkeys candidates :    CTRL+ALT+Return OR Meta+Return   => honore ok
#Hotkeys candidates :    Meta+F7   => honore mushi

configdir=~/.config/honore
commandsnd=playsound
res="${configdir}/res" #resources folder
muchi="${res}/01-muchimuchi.mp3"

r=$((RANDOM %3 +2))
checkbom="${res}/0${r}-checketbom.mp3"

# echo $1
# echo $muchi
# echo $checkbom

if [ "$1" == "ok" ] ; then
    echo "Check & Bom !"
    $commandsnd "$checkbom"
   #killall cvlc
#aplay /usr/lib/libreoffice/share/gallery/sounds/curve.wav;

else
    echo "Muchimuchi ..."
    $commandsnd "$muchi"
 
fi


