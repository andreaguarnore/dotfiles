#!/usr/bin/env fish

# Terminate already running bar instances
killall polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; sleep 1; end 

# Launch polybar
polybar topbar &

