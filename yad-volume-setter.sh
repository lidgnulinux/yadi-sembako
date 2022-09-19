#!/usr/bin/bash

volstock=$(pulsemixer --get-volume | awk {'print $1'})

yad --scale --title "Yad pulse" --text " Volume" --min-value 0 --max-value=100 --step=5 --value $volstock --print-partial --no-buttons --vertical --height 150 --width 55 | while read val; do pulsemixer --set-volume $val; done
