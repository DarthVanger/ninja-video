# delay effect
ffmpeg -y -i output/pieces/verse-pre.mp3   -af "adelay=delays=41s|41s" output/pieces/verse.mp3
