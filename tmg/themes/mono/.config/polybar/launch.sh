#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bars
echo "---" | tee -a /tmp/polybar.log
polybar --config=/home/leandro/.config/polybar/config.ini full >>/tmp/polybar.log 2>&1 &

echo "Polybar launched..."
