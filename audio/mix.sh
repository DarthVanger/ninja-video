ffmpeg -y \
  -i output/pieces/01-story.mp3 \
  -i output/pieces/02-story.mp3 \
  -filter_complex amix=inputs=2:duration=longest output/merged.mp3

#  -i output/pieces/verse-2.mp3 \
#  -i output/pieces/outro.mp3 \
