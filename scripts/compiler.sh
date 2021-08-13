#!/bin/sh

FILE=$(readlink -f "$1")
DIR=${FILE%/*}
BASE="${FILE%.*}"
EXT="${FILE##*.}"

case "$EXT" in
	c) gcc "$FILE" -o "$BASE" && "$BASE" ;;
	md) pandoc -f markdown "$FILE" --pdf-engine=pdflatex -o "$BASE".pdf ;;
	py) python3 -u "$FILE" ;;
	tex) xelatex --halt-on-error -shell-escape --output-directory="$DIR" "$FILE" ;;
	java) cd "$DIR" && javac "$FILE" && java $(basename "$BASE") ;;
esac
