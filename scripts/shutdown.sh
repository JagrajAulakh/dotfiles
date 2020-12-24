#!/bin/bash

ans=$(~/scripts/prompt.sh "Are you sure you want to SHUT DOWN?" "No\nYes")

if [ "$ans" == "Yes" ]
then
	shutdown -h now
fi
