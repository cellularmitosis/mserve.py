#!/bin/bash

# merge a .srt subtitle file into an mp4 video file.
# ./combine-mp4-srt.sh in.mp4 in.srt out.mp4

set -e
set -x

ffmpeg -i "$1" -i "$2" -c copy -c:s mov_text tmpfile.mp4
mv tmpfile.mp4 "$1"
