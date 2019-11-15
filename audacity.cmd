@echo off
:: cls
:: =========    FFmpeg path Changer for Audacity   ==================
:: This script add FFmpeg 2.2.2 to the path before starting Audacity.
:: 
:: ============    Required setting before use    =================== 
:: Please write your settings in the following items 1, 2 and 3.
:: 
:: [1] default FFmpeg PATH
set DEFDIR=C:\tool\ffmpeg\bin
:: 
:: [2] FFmpeg 2.2.2 PATH for Audacity
set FFMPEG222DIR=C:\tool\ffmpeg-win-2.2.2
:: 
:: [3] Audacity PATH
set AUDACITYDIR=C:\tool\audacity-2.3.2
:: 
:: ==================================================================

:: Check FFmpeg PATH
PATH | findstr.exe /L ffmpeg >nul 2>nul
if %ERRORLEVEL% == 0 goto REP_PATH

:ADD_PATH
:: If FFmpeg PATH is not defined, add PATH.
PATH=%FFMPEG222DIR%;%PATH%

:REP_PATH
:: If FFmpeg PATH is defined, replace PATH.
call PATH %%PATH:%DEFDIR%=%FFMPEG222DIR%%%

:: Check version
ffmpeg -version

:: Run
echo Run Audacity
%AUDACITYDIR%\audacity.exe
