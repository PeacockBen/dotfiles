#!/bin/bash

wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print $2 *100}'

pactl subscribe | grep --line-buffered "Event 'change' on sink" | while read -r _; do
    wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print $2 *100}'
done
