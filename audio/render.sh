source ~/.bash_profile
sh ./cut.sh
sh ./merge.sh
#sh ./mix.sh
play output/merged.mp3 trim ${1} ${2}
