source "$(dirname ${BASH_SOURCE[0]:-$0})/lowqualityaudio_linux.sh" $1
ffmpeg -i $1 -i out.mp3 -c:v libx264 -crf 51 -map 0:v:0 -map 1:a:0 out.mp4
rm out.mp3