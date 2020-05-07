#!/bin/bash

########
# Cut video ./video.mp4 into multiple pieces.
# Each line creates a piece in ./output/pieces/{piece-name}.mp4.

# Piece start is the time passed as -ss arg.
# Piece duration is in seconds, passed as -t arg.
#
# To add a new piece, copy a line and change name of the output file.
########

source_folder="source_video"
output_folder="output/pieces"

rm -rf output/pieces/*

## story
ffmpeg -y -ss 00:00:00 -i "output/01-story.mp3" "${output_folder}/01-story.mp3"

## story 2
ffmpeg -y -ss 00:00:00 -i "output/02-story.mp3" "${output_folder}/02-story.mp3"
ffmpeg -y -ss 00:00:00 -i "output/silence.mp3" -t 4 "${output_folder}/03-silence.mp3"
