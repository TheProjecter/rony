# temp page for video conv notes

### FLV to MP4 ###
```
$ midentify movie.flv | grep CODEC
```
if
```
ID_VIDEO_CODEC=ffh264
ID_AUDIO_CODEC=ffaac
```
then
```
$ ffmpeg -i movie.flv -acodec copy -vcodec copy movie.mp4
```
else
```
$ ffmpeg -i movie.avi -vcodec libx264 -vpre baseline -vpre slow -acodec libfaac -ac 2 -ab 128k movie.mp4
```
~~`$ ffmpeg -i movie.avi -vcodec libx264 -vpre baseline -vpre hg -acodec libfaac -ac 2 -ab 128k movie.mp4`~~

### RMVB to MP4 ###
```
$ ffmpeg -i test.rm -vcodec mpeg4 -sameq -acodec aac -strict experimental -ab 92000 test.mp4
or
$ ffmpeg -i test.rm -vcodec mpeg4 -sameq -acodec libfaac -ab 92 test.mp4
```