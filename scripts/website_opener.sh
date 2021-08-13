#!/bin/sh

LINKS=$(grep -o "https*://.\+\.[^\" ]\+" "$1")

RESULT=$(~/scripts/prompt.sh "Links:" "$LINKS")

# If result is not empty
if [ $RESULT ]; then
	sh -c "brave '$RESULT'"
fi;

