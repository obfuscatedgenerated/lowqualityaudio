ffmpeg -i %1 -acodec libmp3lame -ab 1k -ar 8000 -filter:a "volume=-50dB" tmp_1.mp3
ffmpeg -i tmp_1.mp3 -acodec libmp3lame -ab 1k -ar 8000 -filter:a "volume=50dB" tmp_2.mp3
ffmpeg -i tmp_2.mp3 -acodec libmp3lame -ab 1k -ar 8000 -filter:a "volume=-50dB" tmp_3.mp3
ffmpeg -i tmp_3.mp3 -acodec libmp3lame -ab 1k -ar 8000 -filter:a "volume=50dB" out.mp3
del tmp_1.mp3
del tmp_2.mp3
del tmp_3.mp3