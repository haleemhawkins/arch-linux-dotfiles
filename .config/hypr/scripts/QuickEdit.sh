#!/bin/bash

# WOFI STYLES
CONFIG="$HOME/.config/wofi/WofiBig/config"
STYLE="$HOME/.config/wofi/style.css"

hyprDir="$HOME/.config/hypr/configs"

# wofi window config (in %)
WIDTH=10
HEIGHT=30

## Wofi Command
wofi_command="wofi --show dmenu \
			--prompt choose to view or edit...
			--conf $CONFIG --style $STYLE \
			--width=$WIDTH% --height=$HEIGHT% \
			--cache-file=/dev/null \
			--hide-scroll --no-actions \
			--matching=fuzzy"


menu(){
  printf "1. view Env-variables\n"
  printf "2. view Rules\n"
  printf "3. view Execs\n"
  printf "4. view Key-Binds\n"
  printf "5. view Monitors\n"
}

main() {
    choice=$(menu | ${wofi_command} | cut -d. -f1)
    case $choice in
        1)
            foot -e code "$hyprDir/ENVariables.conf"
            ;;
        2)
            foot -e code "$hyprDir/WindowRules.conf"
            ;;
        3)
            foot -e code "$hyprDir/Execs.conf"
            ;;
        4)
            foot -e code "$hyprDir/Keybinds.conf"
            ;;
        5)
            foot -e code "$hyprDir/Monitors.conf"
            ;;
        *)
            ;;
    esac
}

main