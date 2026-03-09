#!/bin/bash

function evaluate_sidebar_state() {
    local mode
    mode=$(i3-msg -t get_tree | jq -r '.. | select(.focused? == true) | .fullscreen_mode')

    echo $mode
}

evaluate_sidebar_state

