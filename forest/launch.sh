#!/usr/bin/env bash

# Add this script to your wm startup file.

DIR="$HOME/.config/polybar/forest"

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch the top bar
polybar -q computer -c "$DIR"/config.ini &
polybar -q tray -c "$DIR"/config.ini &
polybar -q workspaces -c "$DIR"/config.ini &
polybar -q polywins -c "$DIR"/config.ini &
polybar -q volume -c "$DIR"/config.ini &
polybar -q launcher -c "$DIR"/config.ini &
polybar -q power -c "$DIR"/config.ini &
polybar -q networking -c "$DIR"/config.ini &
polybar -q title -c "$DIR"/config.ini &
polybar -q date -c "$DIR"/config.ini &
# bottom bar

polybar -q computer-2 -c "$DIR"/config.ini &
polybar -q tray-2 -c "$DIR"/config.ini &
polybar -q workspaces-2 -c "$DIR"/config.ini &
polybar -q polywins-2 -c "$DIR"/config.ini &
polybar -q volume-2 -c "$DIR"/config.ini &
polybar -q launcher-2 -c "$DIR"/config.ini &
polybar -q power-2 -c "$DIR"/config.ini &
polybar -q networking-2 -c "$DIR"/config.ini &
polybar -q title-2 -c "$DIR"/config.ini &
polybar -q date-2 -c "$DIR"/config.ini &


