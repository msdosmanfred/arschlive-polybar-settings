#!/bin/sh
#source https://github.com/x70b1/polybar-scripts


if ! updates_arch=$(checkupdates &> /dev/null | wc -l ); then
    updates_arch=0
fi

# if ! updates_aur=$(cower -u 2> /dev/null | wc -l); then
if ! updates_aur=$(paru -Sua --quiet &> /dev/null | wc -l); then
    updates_aur=0
fi

updates=$(("$updates_arch" + "$updates_aur"))

if [ "$updates" -gt 0 ]; then
    echo " $updates"
else
    echo "0"
fi
