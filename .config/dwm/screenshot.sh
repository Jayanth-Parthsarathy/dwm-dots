#!/bin/bash

screenshot_file="/tmp/screenshot-$(date +"%Y%m%d-%H%M%S").png"
scrot -s "$screenshot_file"
xclip -selection clipboard -t image/png < "$screenshot_file"
