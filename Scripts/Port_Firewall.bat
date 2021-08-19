@echo off
title Port Firewall
mode 80,25
color 07
REM Port Firewall
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
echo Port Firewall (TCP / UDP)
echo.
echo  Author: Haitham Aouati
echo  Social: @haithamaouati
echo.
echo 1) TCP Port
echo 2) UDP Port
echo.
echo 0) Exit
echo.
set /p input=Input:
if %input% gtr 2 cls && goto :main
if %input% == 1 cls && goto :tcp
if %input% == 2 cls && goto :udp
if %input% == 0 cls && goto :end
goto :eof

:tcp
set /p name=Name:
set /p tcp=TCP Port:
netsh advfirewall firewall add rule name=%name% protocol=TCP localport=%tcp% action=allow dir=IN
pause && cls && goto :main
goto :eof

:udp
set /p name=Name:
set /p udp=UDP Port:
netsh advfirewall firewall add rule name=%name% protocol=UDP localport=%udp% action=allow dir=IN
pause && cls && goto :main
goto :eof

:end
choice /c YN /n /t 10 /d Y /m "Do you want exit the program (Y/N)?"
if %errorlevel% equ 1 exit /b
if %errorlevel% equ 2 cls && goto :main
goto :eof