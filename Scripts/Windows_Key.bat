@echo off
title Windows Key
mode 80,25
color 07
REM Windows Key
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
echo Windows Key
echo.
echo  Author: Haitham Aouati
echo  Social: @haithamaouati
echo.
echo 1) Product Key
echo.
echo 0) Exit
echo.
set /p input=Input:
if %input% gtr 1 cls && goto :main
if %input% == 1 cls && goto :key
if %input% == 0 cls && goto :end
goto :eof

:key
wmic path softwarelicensingservice get OA3xOriginalProductKey
pause && cls & goto :main
goto :eof

:end
choice /c YN /n /t 10 /d Y /m "Do you want exit the program (Y/N)?"
if %errorlevel% equ 1 exit /b
if %errorlevel% equ 2 cls && goto :main
goto :eof