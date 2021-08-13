#!/usr/bin/python3

import requests
from pprint import pprint

resp = requests.get("http://content.warframe.com/dynamic/worldState.php")

if resp.status_code == 200:
    resp_json = resp.json()
    pprint(resp_json)
    # is_day = resp_json['isDay']
    # time_left = resp_json['timeLeft']
    
    # symbol = '' if is_day else ''
    # print(symbol, time_left)
