#!/bin/bash

########
# Cut video ./video.mp4 into multiple pieces.
# Each line creates a piece in ./output/pieces/{piece-name}.mp4.

# Piece start is the time passed as -ss arg.
# Piece duration is in seconds, passed as -t arg.
#
# To add a new piece, copy a line and change name of the output file.
########

output_folder="output/pieces"

rm -rf output/pieces/*

case "$1" in
   --preview) source_folder="output/preview" ;;
           *) source_folder="source_video" ;;
     esac

echo "Cutting files from '${source_folder}'"

# watching street
ffmpeg -y -ss 00:00:02 -i "${source_folder}/01-watching-street.mp4"  -t 4 "${output_folder}/01.mp4"
ffmpeg -y -ss 00:00:00 -i "${source_folder}/02-street.mp4"  -t 4  "${output_folder}/02.mp4"
ffmpeg -y -ss 00:00:00 -i "${source_folder}/03-street.mp4"  -t 4  "${output_folder}/03.mp4"
ffmpeg -y -ss 00:00:02 -i "${source_folder}/04-watching-street.mp4"  -t 4 "${output_folder}/04.mp4"

# robot
ffmpeg -y -ss 00:00:02 -i "${source_folder}/10-robot.mp4"  -t 20 "${output_folder}/10.mp4"


# watching street

# ninja: mirrors
ffmpeg -y -ss 00:00:03 -i "${source_folder}/30-mirrors.mp4"  -t 3  "${output_folder}/30.mp4"

# ninja: fight

# dance
ffmpeg -y -ss 00:00:05 -i "${source_folder}/50-dance.mp4"  -t 20  "${output_folder}/50.mp4"

# chorus dance

# you wanna fight man?

# chorus-without-music
