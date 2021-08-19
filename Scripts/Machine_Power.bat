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
echo 1) Shutdown
echo 2) Restart
echo.
echo 0) Exit
echo.
set /p input=Input:
if %input% gtr 2 cls && goto :main
if %input% == 1 cls && goto :shutdown
if %input% == 2 cls && goto :restart
if %input% == 0 cls && goto :end
goto :eof

:shutdown
set /p t=Time:
shutdown /s /f /t %t%
exit
goto :eof

:restart
set /p t=Time:
shutdown /r /f /t %t%
exit
goto :eof

:end
choice /c YN /n /t 10 /d Y /m "Do you want exit the program (Y/N)?"
if %errorlevel% equ 1 exit /b
if %errorlevel% equ 2 cls && goto :main
goto :eof