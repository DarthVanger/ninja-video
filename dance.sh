source ~/.bash_profile

# dance
ffmpeg -y -ss 00:00:04 -i "source_video/50-dance.mp4"  -t 38.5  "output/dance-cut.mp4"

# chorus dance
ffmpeg -y -ss 00:00:07.02 -i "source_video/chorus-dance.mp4"  -t 33  "output/chorus-dance-cut.mp4"

# ninja track for dance :)
ffmpeg -y -ss 00:02:51.2 -i "audio/source_video/ninja.mp3" -t 60 "output/ninja-cut.mp3"

# concat dance videos
ffmpeg -y -i "output/dance-cut.mp4" -i "output/chorus-dance-cut.mp4"  \
  -filter_complex "[0:v] [0:a] [1:v] [1:a] concat=n=2:v=1:a=1 [v] [a]" \
  -map "[v]" -map "[a]" "output/dance-merged.mp4"

video=output/dance-merged.mp4
audio=output/ninja-cut.mp3

audio_from_video="output/dance-audio-from-video.mp3"
mixed_audio="output/dance-mixed-audio.mp3"

ffmpeg -y -i "$video" -q:a 0 -map a "$audio_from_video"

ffmpeg -y -i "$audio_from_video" -i "$audio" -filter_complex amix=inputs=2:duration=longest "$mixed_audio"

ffmpeg -y -i "$video" -i "$mixed_audio" -c:v copy -c:a aac -map 0:v:0 -map 1:a:0 output/dance-with-music.mp4

vlc  "output/dance-with-music.mp4"
