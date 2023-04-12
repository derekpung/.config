#!/bin/sh
MONITORS=$(xrandr --listactivemonitors)
NMONITORS=${MONITORS:10:1}
echo $NMONITORS
if NMONITORS==2; then
  xrandr --output eDP1 --mode 1920x1080 --pos 1920x150 --rotate normal --output HDMI1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output VIRTUAL1 --off
fi
