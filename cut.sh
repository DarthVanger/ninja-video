#!/bin/bash

########
# Cut video ./video.mp4 into multiple pieces.
# Each line creates a piece in ./output/pieces/{piece-name}.mp4.

# Piece start is the time passed as -ss arg.
# Piece duration is in seconds, passed as -t arg.
#
# To add a new piece, copy a line and change name of the output file.
########

rm ./output/pieces/*.mp4

ffmpeg -y -ss 00:00:02 -i src/watching-street-1.mp4  -t 4 ./output/pieces/01.mp4
ffmpeg -y -ss 00:00:00 -i src/street-1.mp4  -t 4 ./output/pieces/02.mp4
