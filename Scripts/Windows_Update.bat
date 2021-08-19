@echo off
title Windows Update
mode 80,25
color 07
REM Windows Update
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
echo Windows Update (Disable / Enable)
echo.
echo  Author: Haitham Aouati
echo  Social: @haithamaouati
echo.
echo 1) Disable Windows Update
echo 2) Enable Windows Update
echo.
echo 0) Exit
echo.
set /p input=Input:
if %input% gtr 2 cls && goto :main
if %input% == 1 cls && goto :disable
if %input% == 2 cls && goto :enable
if %input% == 0 cls && goto :end
goto :eof

:disable
net stop wuauserv
net stop bits
net stop dosvc
pause && cls & goto :main
goto :eof

:enable
net start wuauserv
net start bits
net start dosvc
pause && cls & goto :main
goto :eof

:end
choice /c YN /n /t 10 /d Y /m "Do you want exit the program (Y/N)?"
if %errorlevel% equ 1 exit /b
if %errorlevel% equ 2 cls && goto :main
goto :eof