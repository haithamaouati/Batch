@echo off
title Reset Data Usage
mode 80,25
color 07
REM Reset Data Usage
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
echo Reset Data Usage
echo.
echo  Author: Haitham Aouati
echo  Social: @haithamaouati
echo.
echo 1) Reset Data Usage
echo.
echo 0) Exit
echo.
set /p input=Input:
if %input% gtr 1 cls && goto :main
if %input% == 1 cls && goto :reset
if %input% == 0 cls && goto :end
goto :eof

:reset
net stop dps
del /F /S /Q /A "%windir%\System32\sru\*"
net start dps
pause && cls & goto :main
goto :eof

:end
choice /c YN /n /t 10 /d Y /m "Do you want exit the program (Y/N)?"
if %errorlevel% equ 1 exit /b
if %errorlevel% equ 2 cls && goto :main
goto :eof