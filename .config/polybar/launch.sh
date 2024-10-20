#!/usr/bin/env bash

# terminate running instances
killall -q polybar

# wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# launch the bar
polybar main -c $HOME/.config/polybar/config.ini &

