#!/bin/bash


cd "${STEAMCMDDIR}"


./steamcmd.sh +runscript ".steam.cmd"


# Modified version of this script: https://www.youtube.com/watch?v=LwDQaye2TZs


# Cleaning the mods folder
#rm /server/steamcmd/starbound/mods/*.pak
#rmdir --ignore-fail-on-non-empty ./starbound/steamapps/workshop/content/211820/*

# Creating a symlink for every .pak file in the workshop folder to the mods folder
#for dir in /server/steamcmd/starbound/steamapps/workshop/content/211820/*/
#do
#	dir=${dir%*/}
#	echo Sym-linking mod ${dir##*/} into the mods folder
#	ln -r -s /server/steamcmd/starbound/steamapps/workshop/content/211820/${dir##*/}/*.pak /server/steamcmd/starbound/mods/${dir##*/}.pak
#done

# Above code sometime produce a *.pak file which crash the server so we remove it
#rm -f '/server/steamcmd/starbound/mods/*.pak'

# Run the starbound server
#cd /server/steamcmd/starbound/linux
#./starbound_server


exit 0