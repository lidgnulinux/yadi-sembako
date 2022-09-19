#!/usr/bin/bash

bright=$(light -G | cut -b 1-2)

yadi_sembako () {
yad --scale \
	--title "Yad Bright" \
	--text " Bright" --min-value 0 \
	--max-value=100 \
	--step=5 \
	--value $bright --print-partial \
	--no-buttons \
	--vertical \
	--height 150 \
	--width 55 
}
yadi_sembako | while read val; do light -S $val; done
