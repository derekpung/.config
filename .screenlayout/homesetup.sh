#!/bin/sh

MONITORS=$(xrandr --listactivemonitors)
NMONITORS=${MONITORS:10:1}
echo $NMONITORS
if NMONITORS==2; then
    xrandr --output eDP-1 --mode 1920x1080 --pos 1920x176 --rotate normal --output HDMI-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP-1-0 --off --output DP-1-1 --off
fi
