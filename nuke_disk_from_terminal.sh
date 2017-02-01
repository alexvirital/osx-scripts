#!/bin/sh

# Author: Jared F. Nichols
# Purpose: Nuke and pave the first internal drive to prepare for imaging.

clear
echo "Do you wish to nuke the internal drive?"
echo "THERE IS NO RECOVERY FROM THIS!"
printf "Y/N? "
read response

case $response in
	Y|y|YES|yes|Yes|yEs|yeS|YEs|yES)
		echo
		echo
		sudo diskutil partitionDisk /dev/disk0 1 gpt jhfs+ "Macintosh HD" 100%
		echo
		echo "Formatting complete."
		echo "Continue with Casper Imaging."
		echo
		echo
		exit 0 # Normal Exit
		;;
	N|n|NO|no|No|nO)
		echo
		echo
		echo "Quitting"
		echo
		echo
		exit 1 # User quit
		;;
esac