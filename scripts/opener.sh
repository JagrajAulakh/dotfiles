#!/bin/sh

FILE=$(readlink -f "$1")
DIR=${FILE%/*}
BASE="${FILE%.*}"
EXT="${FILE##*.}"

case "$EXT" in
	tex) zathura "$BASE".pdf ;;
	md)
		(echo $DIR | grep -i -q "pandoc") && zathura "$BASE".pdf || $BROWSER "$FILE"
		;;
	html) $BROWSER "$FILE" ;;
esac
