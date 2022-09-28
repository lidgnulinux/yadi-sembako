#!/usr/bin/bash

indicator () {
while true; do
	DATE=$(date +"%d-%m-%Y %H:%M")
	
	BAT=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep percent | awk {'print $2'})

	#printf "%s\r" "$DATE | Batt: $BAT"
	echo -e "\n\n\n$DATE | Batt: $BAT"

	sleep 15

done
}

indicator | yad --text-info --no-buttons --width=210 --tail
