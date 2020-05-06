#!/bin/bash
source ~/.bash_profile
play output/merged.mp3 trim "${1}" "${2}" &> /dev/null
