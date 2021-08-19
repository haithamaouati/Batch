@echo off
title Machine Power
mode 80,25
color 07
REM Machine Power
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
echo Machine Power
echo.
echo  Author: Haitham Aouati
echo  Social: @haithamaouati
echo.
echo 1) Info
echo.
echo 0) Exit
echo.
set /p input=Input:
if %input% gtr 1 cls && goto :main
if %input% == 1 cls && goto :info
if %input% == 0 cls && goto :end
goto :eof

:info
echo System Info
echo.
systeminfo | findstr /c:"OS Name"
systeminfo | findstr /c:"OS Version"
systeminfo | findstr /c:"System Type"
echo.
echo Hardware Info
systeminfo | findstr /c:"Total Physical Memory"
wmic cpu get name
wmic diskdrive get name,model,size
wmic path win32_videocontroller get name
echo.
echo Network Info
echo.
ipconfig | findstr IPv4
ipconfig | findstr IPv6
start https://support.microsoft.com/en-us/windows/windows-10-system-requirements-6d4e9a79-66bf-7950-467c-795cf0386715
pause && cls & goto :main

:end
choice /c YN /n /t 10 /d Y /m "Do you want exit the program (Y/N)?"
if %errorlevel% equ 1 exit /b
if %errorlevel% equ 2 cls && goto :main
goto :eof