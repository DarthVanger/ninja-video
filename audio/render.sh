source ~/.bash_profile

sh ./cut.sh
sh ./merge.sh
#sh ./mix.sh
sh video_merge.sh
#play output/merged.mp3 trim ${1} ${2}
vlc output/video.mp4
