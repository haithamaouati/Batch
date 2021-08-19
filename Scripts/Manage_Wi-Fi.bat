@echo off
title Manage Wi-Fi
mode 80,25
color 07
REM Manage Wi-Fi
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
echo Manage Wi-Fi
echo.
echo  Author: Haitham Aouati
echo  Social: @haithamaouati
echo.
echo 1) Connect
echo 2) Disconnect
echo 3) Password
echo 4) Export
echo 5) List
echo.
echo 0) Exit
echo.
set /p input=Input:
if %input% gtr 5 cls && goto :main
if %input% == 1 cls && goto :connect
if %input% == 2 cls && goto :disconnect
if %input% == 3 cls && goto :password
if %input% == 4 cls && goto :export
if %input% == 5 cls && goto :list
if %input% == 0 cls && goto :end
goto :eof

:connect
netsh wlan show profiles
set /p name=Name:
netsh wlan connect ssid=%name% name=%name%
pause && cls && goto :main
goto :eof

:disconnect
netsh wlan disconnect
pause && cls && goto :main
goto :eof

:password
netsh wlan show profiles
set /p name=Name:
netsh wlan show profile name=%name% key=clear | findstr /c:"Key Content"
pause && cls && goto :main
goto :eof

:export
netsh wlan show profiles
set /p name=Name:
netsh wlan export profile name=%name% key=clear
pause && cls && goto :main
goto :eof

:list
netsh wlan show profiles interface="wi-fi"
pause && cls && goto :main
goto :eof

:end
choice /c YN /n /t 10 /d Y /m "Do you want exit the program (Y/N)?"
if %errorlevel% equ 1 exit /b
if %errorlevel% equ 2 cls && goto :main
goto :eof