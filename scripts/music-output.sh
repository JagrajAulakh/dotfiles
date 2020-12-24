#!/bin/bash

playerstatus=$(playerctl -p "clementine" status 2> /dev/null)

if [ "$playerstatus" = "Playing" -o "$playerstatus" = "Paused" ]; then
	artist=$(playerctl -p "clementine" metadata artist 2> /dev/null)
	title=$(playerctl -p "clementine" metadata title 2> /dev/null)
	if [ -n "$artist" ]; then
		artist="$artist - "
	fi
	if [ "$playerstatus" = "Playing" ]; then
		echo "契 $artist$title"
	elif [  "$playerstatus" = "Paused" ]; then
		echo " $artist$title"
	fi
else
	echo ""
fi

