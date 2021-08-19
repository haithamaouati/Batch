@echo off
title Batch Script
mode 80,25
color 07
REM Batch Script
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
echo Batch Script
echo.
echo  Author: Haitham Aouati
echo  Social: @haithamaouati
echo.
echo 1) Option 1
echo 2) Option 2
echo.
echo 0) Exit
echo.
set /p input=Input:
if %input% gtr 2 cls && goto :main
if %input% == 1 cls && goto :option1
if %input% == 2 cls && goto :option2
if %input% == 0 cls && goto :end
goto :eof

:option1
echo Option 1
pause && cls & goto :main
goto :eof

:option2
echo Option 2
pause && cls & goto :main
goto :eof

:end
choice /c YN /n /t 10 /d Y /m "Do you want exit the program (Y/N)?"
if %errorlevel% equ 1 exit /b
if %errorlevel% equ 2 cls && goto :main
goto :eof
