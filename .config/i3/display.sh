#!/bin/sh

INTERNAL_OUTPUT="eDP-1"
INTERNAL_AUDIO=$(pactl list sinks | grep Name | awk -F: '{print $2}' | grep analog)

if [[ $(xrandr | grep HDMI-1 | grep -c ' connected ') -eq 1 ]]; then
  EXTERNAL_OUTPUT="HDMI-1"
  xrandr --output $EXTERNAL_OUTPUT --primary --mode 1920x1080 --refresh 120 --left-of $INTERNAL_OUTPUT
  EXTERNAL_AUDIO=$(pactl list sinks | grep Name | awk -F: '{print $2}' | grep hdmi)
  xrandr --output $INTERNAL_OUTPUT --brightness 1
  pactl set-default-sink $EXTERNAL_AUDIO
else
  xrandr --output $INTERNAL_OUTPUT --primary --mode 1920x1080
  xrandr --output $INTERNAL_OUTPUT --brightness 1
  pactl set-default-sink $INTERNAL_AUDIO
fi
