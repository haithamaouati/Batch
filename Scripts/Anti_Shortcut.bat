@echo off
title Anti Shortcut
mode 80,25
color 07
REM Anti Shortcut
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
echo Anti Shortcut
echo.
echo  Author: Haitham Aouati
echo  Social: @haithamaouati
echo.
echo 1) Drive / USB / SD Card
echo 2) Directory
echo.
echo 0) Exit
echo.
set /p input=Input:
if %input% gtr 2 cls && goto :main
if %input% == 1 cls && goto :drive
if %input% == 2 cls && goto :directory
if %input% == 0 cls && goto :end
goto :eof

:drive
set /p drivelabel=Drive Label:
%drivelabel%
attrib -h -r -s / s / d %drivelabel%\*.*
pause && cls && goto :main
goto :eof

:directory
set /p path=Path:
cd %path%
attrib -h -r -s / s / d %path%\*.*
pause && cls && goto :main
goto :eof

:end
choice /c YN /n /t 10 /d Y /m "Do you want exit the program (Y/N)?"
if %errorlevel% equ 1 exit /b
if %errorlevel% equ 2 cls && goto :main
goto :eof