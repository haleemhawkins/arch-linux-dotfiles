#!/bin/bash

CONFIG="$HOME/.config/wofi/WofiBig/config"
STYLE="$HOME/.config/wofi/style.css"

if [[ ! $(pidof wofi) ]]; then
	wofi --show drun --prompt 'Search...' --conf ${CONFIG} --style ${STYLE}
else
	pkill wofi
fi
