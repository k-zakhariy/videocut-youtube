#!/bin/bash
echo Введіть посилання на відео
read youtubeUrl
echo Введіть початок відео хв:сек
read start
echo Введіть тривалість хв:сек
read end
youtube-dl -U
youtube-dl -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio' --merge-output-format mp4 --output "downloaded_video.mp4" $youtubeUrl
ffmpeg -ss "00:$start" -i "downloaded_video.mp4" -to "00:$end" -c copy "downloaded_video_cut.mp4"



