#!/bin/bash

BACKGROUND=$(xrdb -query | grep dmenu.background | cut -f2)
FOREGROUND=$(xrdb -query | grep dmenu.foreground | cut -f2)
ACCENT=$(xrdb -query | grep dmenu.accent | cut -f2)

echo $(echo -e "$2" | /usr/local/bin/dmenu -m 0 -h 27 -x 4 -y 4 -w 1912 -l 20 -i -p "$1" -nf $FOREGROUND -nb $BACKGROUND -sf $BACKGROUND -sb $ACCENT)
# echo $(echo -e "$2" | rofi -dmenu -i -p "$1")
