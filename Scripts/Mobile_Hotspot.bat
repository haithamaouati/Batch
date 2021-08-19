@echo off
title Mobile Hotspot
mode 80,25
color 07
REM Mobile Hotspot
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
timeout /t 10 /nobreak
exit
)
goto :eof

:main
echo Mobile Hotspot
echo.
echo  Author: Haitham Aouati
echo  Social: @haithamaouati
echo.
echo 1) Start Hotspot
echo 2) Stop Hotspot
echo.
echo 0) Exit
echo.
set /p input=Input:
if %input% gtr 2 cls && goto :main
if %input% == 1 cls && goto :start
if %input% == 2 cls && goto :stop
if %input% == 0 cls && goto :end
goto :eof

:start
set /p ssid=Name:
set /p key=Password:
netsh wlan set hostednetwork mode=allow ssid%ssid% key=%key%
netsh wlan start hostednetwork
pause && cls && goto :main
goto :eof

:stop
set /p ssid=Name:
set /p key=Password:
netsh wlan set hostednetwork mode=allow ssid%ssid% key=%key%
netsh wlan stop hostednetwork
pause && cls && goto :main
goto :eof

:end
choice /c YN /n /t 10 /d Y /m "Do you want exit the program (Y/N)?"
if %errorlevel% equ 1 exit /b
if %errorlevel% equ 2 cls && goto :main
goto :eof