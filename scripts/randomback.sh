#!/bin/bash

BG_DIR="/home/juggy1233/Pictures/backgrounds/"
feh --bg-scale "$BG_DIR""$(ls $BG_DIR | shuf -n 1)"


