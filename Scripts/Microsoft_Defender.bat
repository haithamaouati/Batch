@echo off
title Microsoft Defender
mode 80,25
color 07
REM Microsoft Defender
REM Author: Haitham Aouati
REM Social: @haithamaouati
cls

goto :elevation

:elevation
net session >nul 2>&1
if %errorLevel% == 0 (
cls && goto :main
) else (
echo Run as administrator.
pause >nul && exit
)
goto :eof

:main
echo Microsoft Defender
echo.
echo  Author: Haitham Aouati
echo  Social: @haithamaouati
echo.
echo 1) Update
echo 2) Quick Scan
echo 3) Full Scan
echo 4) Custom Scan
echo.
echo 0) Exit
echo.
set /p input=Input:
if %input% gtr 4 cls && goto :main
if %input% == 1 cls && goto :update
if %input% == 2 cls && goto :quick
if %input% == 3 cls && goto :full
if %input% == 4 cls && goto:custom
if %input% == 0 cls && goto :end
goto :eof

:update
cd C:\ProgramData\Microsoft\Windows Defender\Platform\4.18*
MpCmdRun -SignatureUpdate
pause && cls & goto :main
goto :eof

:quick
cd C:\ProgramData\Microsoft\Windows Defender\Platform\4.18*
MpCmdRun -Scan -ScanType 1
pause && cls & goto :main
goto :eof

:full
cd C:\ProgramData\Microsoft\Windows Defender\Platform\4.18*
MpCmdRun -Scan -ScanType 2
pause && cls & goto :main
goto :eof

:custom
cd C:\ProgramData\Microsoft\Windows Defender\Platform\4.18*
set /p path=Path:
MpCmdRun -Scan -ScanType 3 -File %path%
pause && cls & goto :main
goto :eof

:end
choice /c YN /n /t 10 /d Y /m "Do you want exit the program (Y/N)?"
if %errorlevel% equ 1 exit /b
if %errorlevel% equ 2 cls && goto :main
goto :eof