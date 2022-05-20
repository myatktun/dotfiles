#!/bin/sh

INTERNAL_OUTPUT="eDP-1"
INTERNAL_AUDIO=$(pactl list sinks | grep Name | awk -F: 'NR==1{print $2}')

if [[ $(xrandr | grep HDMI-1 | grep -c ' connected ') -eq 1 ]]; then
  EXTERNAL_OUTPUT="HDMI-1"
  xrandr --output $INTERNAL_OUTPUT --off --output $EXTERNAL_OUTPUT --primary --mode 1920x1080 --refresh 120.40 --pos 0x0 --rotate normal
  EXTERNAL_AUDIO=$(pactl list sinks | grep Name | awk -F: 'NR==2{print $2}')
  pactl set-default-sink $EXTERNAL_AUDIO
else
  xrandr --output $INTERNAL_OUTPUT --primary --mode 1920x1080 --refresh 60.05 --pos 0x0 --rotate normal --output $EXTERNAL_OUTPUT --off
  pactl set-default-sink $INTERNAL_AUDIO
fi
