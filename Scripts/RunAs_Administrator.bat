@echo off
title RunAs Administrator
mode 80,25
color 07
REM Run As Administrator
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
echo Run As Administrator
echo.
echo  Author: Haitham Aouati
echo  Social: @haithamaouati
echo.
echo 1) RunAs
echo.
echo 0) Exit
echo.
set /p input=Input:
if %input% gtr 1 cls && goto :main
if %input% == 1 cls && goto :runas
if %input% == 0 cls && goto :end
goto :eof

:runas
set /p path=Filename:
powershell -Command "Start-Process %path% -Verb RunAs"
pause && cls & goto :main
goto :eof

:end
choice /c YN /n /t 10 /d Y /m "Do you want exit the program (Y/N)?"
if %errorlevel% equ 1 exit /b
if %errorlevel% equ 2 cls && goto :main
goto :eof