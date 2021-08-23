#!/bin/sh
printf "\n\n\nApple Magic Trackpad 2 Linux Setup\n"
printf "==================================================\n"
if ! xinput list | grep 'Apple Inc. Magic Trackpad 2'
then
	printf "Touchpad not found\n"
	exit
fi
printf  "Kernel Version (>4.20 needed):"
uname -r
id=$(xinput list | grep 'Apple Inc. Magic Trackpad 2i2' | sed 's/.*id=//' |sed 's/\s.*$//')
if ! command -v synclient &> /dev/null
then
    echo "This software needs the synclient tool"
    echo "make sure you have it installed"
    exit
fi


synclient
