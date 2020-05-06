#!/bin/bash

source_folder="source_video"
output_folder="output"

ffmpeg -i "${source_folder}/1.mp4" -q:a 0 -map a "${output_folder}/01-story.mp3"
ffmpeg -i "${source_folder}/2.mp4" -q:a 0 -map a "${output_folder}/02-story.mp3"
