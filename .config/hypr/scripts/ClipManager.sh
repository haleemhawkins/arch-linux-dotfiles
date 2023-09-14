#!/bin/sh

# WOFI STYLES
CONFIG="$HOME/.config/wofi/WofiBig/config"
STYLE="$HOME/.config/wofi/style.css"


if [[ ! $(pidof wofi) ]]; then
  cliphist list | wofi --show dmenu --prompt 'Search...' \
    --conf ${CONFIG} --style ${STYLE} \
    --width=1400 --height=600 | cliphist decode | wl-copy
else
	pkill wofi
fi