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
ffmpeg -y -ss 00:00:00 -i "output/02-story.mp3" "${output_folder}/02-story.mp3"

# silence from 7 sec to 28
ffmpeg -y -ss 00:00:00 -i "output/silence.mp3" -t 21 "${output_folder}/03-silence.mp3" 

## story 2
ffmpeg -y -ss 00:00:00 -i "output/03-story.mp3" -t 21 "${output_folder}/04-story.mp3" 
ffmpeg -y -ss 00:00:00 -i "output/04-story.mp3" -t 21 "${output_folder}/05-story.mp3" 
ffmpeg -y -ss 00:00:00 -i "output/05-story.mp3" -t 21 "${output_folder}/06-story.mp3" 

## silence from 00:42 to 01:01
ffmpeg -y -ss 00:00:00 -i "output/silence.mp3" -t 19.5 "${output_folder}/07-silence.mp3" 

## ninja track for dance :)
ffmpeg -y -ss 00:02:51.5 -i "${source_folder}/ninja.mp3" -t 25 "${output_folder}/08-ninja.mp3" 
