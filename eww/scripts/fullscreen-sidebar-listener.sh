#!/bin/bash

function evaluate_sidebar_state() {
    local mode
    mode=$(i3-msg -t get_tree | jq -r '
        .. | select(.focused? == true and .type? != "workspace") | .fullscreen_mode
    ' 2>/dev/null | head -n1)

    if [[ "$mode" == "1" ]]; then
        eww update show_sidebar=false
        xprop -name "Eww - sidebar" -f _PICOM_HIDE 32c -set _PICOM_HIDE 1
	sleep 0.25
	eww close sidebar
    else
	eww open sidebar
	sleep 0.05
	xprop -name "Eww - sidebar" -remove _PICOM_HIDE
        eww update show_sidebar=true
    fi
}


i3-msg -t subscribe '["window", "workspace"]' --monitor | while read -r event; do
    change=$(echo "$event" | jq -r '.change')

    case "$change" in
        focus|fullscreen_mode|title|close|empty|init)
            evaluate_sidebar_state
            ;;
    esac
done
