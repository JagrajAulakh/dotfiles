#!/bin/sh
source ~/.bash_profile

FILE=$(readlink -f "$1") # Full path to file
DIR=${FILE%/*}           # Directory
BASE="${FILE%.*}"        # File name without extension
EXT="${FILE##*.}"        # Only extension

case "$EXT" in
	tex) zathura "$BASE".pdf ;;
	md)
		(echo $DIR | grep -i -q "pandoc") && zathura "$BASE".pdf || $BROWSER "$FILE"
		;;
	html) $BROWSER "$FILE" ;;
esac
