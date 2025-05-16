#!/bin/bash

set -e -o pipefail
set -x

for f in "$@" ; do
    ffmpeg -i "$f" -c copy -c:s mov_text "$(basename "$f" .mkv).mp4"
    rm "$f"
done
