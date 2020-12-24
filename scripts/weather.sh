#!/bin/bash
out=$(ansiweather -a false -s false -p false -h false -w false -i false -d false -l 6182962 | cut -d":" -f 2 | xargs 2> /dev/null)
echo $out > weather_cache.txt
echo $out
