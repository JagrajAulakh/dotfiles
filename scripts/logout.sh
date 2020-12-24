#!/bin/bash

ans=$(~/scripts/prompt.sh "Are you sure you want to logout?" "No\nYes")

if [ "$ans" == "Yes" ]
then
	i3-msg exit
fi
