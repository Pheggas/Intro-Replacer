:: You have to edit this file to get it working in your environment.
:: ---Legend---
:: PATH - Variable that stores path to your episodes that you're entering at the start (DO NOT EDIT)
:: EPISODE - Variable that have stored filename inside your specified folder (DO NOT EDIT)
:: FINAL - Full path that also contains mkv you're aiming to (DO NOT EDIT)
:: mkvmerge - You don't need to edit this untill you have this script inside your MkvToolNix folder. If you want this script outside MkvToolNix folder, specify mkvmerge.exe by replacing with ex. "D:\My Folder\MkvToolNix\mkvmerge.exe" (also with quotation marks)
:: temp\mka source after split\ - Output folder for extracted audio from dubbed episode without the intro part
:: temp\mka output\ - Output folder for merged audio containing original intro part and dubbed rest of episode
:: temp\mka source intro\ - Contains audio file with intro in original language
:: temp\mkv output\ - Output folder for merged audio from temp\mka output\ and video from dubbed episode

@echo off
setlocal EnableDelayedExpansion
set /p PATH="Enter path to episodes: "
cd %PATH%
for %%a in (*) do (
set EPISODE=%%a
set FINAL=%PATH%!EPISODE!
mkvmerge -o "D:\temp\mka source after split\!EPISODE!.mka" --no-video --no-subtitles --no-chapters "!FINAL!" --split parts:00:00:40-
mkvmerge -o "D:\temp\mka output\!EPISODE!.mka" "D:\temp\mka source intro\farma_mixdown_final.mka" + "D:\temp\mka source after split\!EPISODE!.mka"
mkvmerge -o "D:\temp\mkv output\!EPISODE!.mkv" --no-audio "%FINAL%" "D:\temp\mka output\!EPISODE!.mka"
)
pause