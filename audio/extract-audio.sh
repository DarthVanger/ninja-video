#!/bin/bash

source_folder="source_video"
output_folder="output"

ffmpeg -y -i "${source_folder}/1.mp4" -q:a 0 -map a "${output_folder}/01-story.mp3"
ffmpeg -y -i "${source_folder}/2.mp4" -q:a 0 -map a "${output_folder}/02-story.mp3"
ffmpeg -y -i "${source_folder}/3.mp4" -q:a 0 -map a "${output_folder}/03-story.mp3"
ffmpeg -y -i "${source_folder}/4.mp4" -q:a 0 -map a "${output_folder}/04-story.mp3"
ffmpeg -y -i "${source_folder}/5.mp4" -q:a 0 -map a "${output_folder}/05-story.mp3"
