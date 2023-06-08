#!/bin/bash

# Maximum length for the displayed string
max_length=20

# Get the currently playing song's artist and title from Spotify
artist=$(playerctl -p spotify metadata artist)
title=$(playerctl -p spotify metadata title)

# Concatenate the artist and title
song_details="$title- $artist"

# Truncate the string if it exceeds the maximum length
if [ ${#song_details} -gt $max_length ]; then
    song_details=${song_details:0:$max_length-3}...
fi

# Output the truncated song details
echo "$song_details"
