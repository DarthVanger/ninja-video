source ~/.bash_profile

video=../output/video.mp4
audio=output/merged.mp3

ffmpeg -y -i "$video" -i "$audio" -c:v copy -c:a aac -map 0:v:0 -map 1:a:0 output/video.mp4
