#!/bin/bash

BACKGROUND=$(xrdb -query | grep dmenu.background: | cut -f2)
FOREGROUND=$(xrdb -query | grep dmenu.foreground: | cut -f2)
FOREGROUND_ALT=$(xrdb -query | grep dmenu.foreground_alt: | cut -f2)
ACCENT=$(xrdb -query | grep dmenu.accent | cut -f2)

echo $(echo -e "$2" | /usr/local/bin/dmenu -m 0 -h 27 -x 0 -y 0 -w 1920 -l 20 -i -p "$1" -nf $FOREGROUND_ALT -nb $BACKGROUND -sf $BACKGROUND -sb $ACCENT)
# echo $(echo -e "$2" | rofi -dmenu -i -p "$1")
