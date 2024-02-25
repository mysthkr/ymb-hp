#!/bin/sh
Files=$(find . -type f -iname '*'.jpg -o -iname '*'.png)
# printf  "$Files\n"
for File in $Files
do
    echo $File
    cwebp -preset photo -metadata icc -sharp_yuv -o /home/user/medi/ymb-hp/adjust_display_images/images-backup/$File".webp" -progress -short $File
    printf "\n----------------\n\n"
done
