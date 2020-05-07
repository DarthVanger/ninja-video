source ~/.bash_profile

video=../output/video.mp4
audio=output/merged.mp3

audio_from_video="output/audio-from-video.mp3"
mixed_audio="output/mixed-audio.mp3"

ffmpeg -y -i "$video" -q:a 0 -map a "$audio_from_video"

ffmpeg -y -i "$audio_from_video" -i "$audio" -filter_complex amix=inputs=2:duration=longest "$mixed_audio"

ffmpeg -y -i "$video" -i "$mixed_audio" -c:v copy -c:a aac -map 0:v:0 -map 1:a:0 output/video.mp4
