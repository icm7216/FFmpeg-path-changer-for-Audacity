# FFmpeg path Changer for Audacity   

This is Audacity's helper script

This script add FFmpeg 2.2.2 to the path before starting Audacity.

## Required setting before use

Please write the target PATH to the `audacity.cmd` file before running. 


## My environment
*   Microsoft Windows [Version 10.0.19013.1122]
*   FFmpeg-4.2.1-win64-static
*   Audacity 2.3.2

## My Directory layout
```
C:.
+---tool
    +---audacity
    |   \---audacity.cmd  <= this file
    +---audacity-2.3.2
    |   +---audacity.exe
    |   \---xxxxxxxx      <= files extracted from ZIP
    +---ffmpeg
    |   +---bin           <= FFmpeg-4.2.1-win64-static
    |   +---doc              default use latest FFmpeg 
    |   \---presets
    +---ffmpeg-win-2.2.2  <= FFmpeg for Audacity
    |   +---avformat-55.dll
    |   \---xxxx.dll      <= some dll files
```
