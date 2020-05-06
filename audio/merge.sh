#!/bin/bash

########
# Concat all *.mp4 videos in output/pieces/* folder
# Write merged video to ./merged.mp4
########

ffmpeg -y -f concat -i concat-list.txt output/merged.mp3

echo "Concatenated videos list:"
cat concat-list.txt
