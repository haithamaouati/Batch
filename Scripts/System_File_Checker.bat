@echo off
title System File Checker
mode 80,25
color 07
REM System File Checker
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
echo System File Checker (SFC)
echo.
echo  Author: Haitham Aouati
echo  Social: @haithamaouati
echo.
echo 1) Scan
echo.
echo 0) Exit
echo.
set /p input=Input:
if %input% gtr 1 cls && goto :main
if %input% == 1 cls && goto :scan
if %input% == 0 cls && goto :end
goto :eof

:scan
SFC /scannow
goto :eof

:end
choice /c YN /n /t 10 /d Y /m "Do you want exit the program (Y/N)?"
if %errorlevel% equ 1 exit /b
if %errorlevel% equ 2 cls && goto :main
goto :eof