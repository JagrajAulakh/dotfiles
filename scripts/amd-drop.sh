#!/bin/sh

URL="https://www.amd.com/en/direct-buy/ca"
DELAY=3s

brave $URL &
sleep $DELAY;
brave --incognito $URL &
sleep $DELAY;
vivaldi-stable $URL &
sleep $DELAY;
vivaldi-stable --incognito $URL &
sleep $DELAY;
firefox $URL &
sleep $DELAY;
firefox --private-window $URL &
sleep $DELAY;
chromium $URL &
sleep $DELAY;
chromium --incognito $URL &
sleep $DELAY;
opera $URL &
sleep $DELAY;
opera --incognito $URL &
sleep $DELAY;
epiphany $URL &
sleep $DELAY;
epiphany -i $URL &
