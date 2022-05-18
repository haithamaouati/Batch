@echo off
title Windows 10 Activator
mode 80,25
color 07
REM Windows 10 Activator
REM Author: Haitham Aouati
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
echo Windows 10 Activator
echo.
echo  ##########  ##########
echo  ##########  ##########
echo  ##########  ##########
echo  ##########  ##########
echo  ##########  ##########
echo.
echo  ##########  ##########
echo  ##########  ##########
echo  ##########  ##########
echo  ##########  ##########
echo  ##########  ##########
echo.
echo  Author: Haitham Aouati
echo  Repo: https://github.com/haithamaouati
echo.
echo 1) Active
echo 0) Exit
echo.
set /p input=Input:
if %input% gtr 1 cls && goto :main
if %input% == 1 cls && goto :active
if %input% == 0 cls && goto :end
goto :eof

:active
echo.
echo Home/Core : TX9XD-98N7V-6WMQ6-BX7FG-H8Q99
echo Home/Core (Country Specific) : PVMJN-6DFY6-9CCP6-7BKTT-D3WVR
echo Home/Core (Single Language) : 7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH
echo Home/Core N : 3KHY7-WNT83-DGQKR-F7HPR-844BM
echo Professional : W269N-WFGWX-YVC9B-4J6C9-T83GX
echo Professional N : MH37W-N47XK-V7XM9-C7227-GCQG9
echo Enterprise : NPPR9-FWDCX-D2C8J-H872K-2YT43
echo Enterprise N : DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4
echo Education : NW6C2-QMPVW-D7KKK-3GKT6-VCFB2
echo Education N : 2WH4N-8QGBV-H22JP-CT43Q-MDWWJ
echo Enterprise 2015 LTSB : WNMTR-4C88C-JK8YV-HQ7T2-76DF9
echo Enterprise 2015 LTSB N : 2F77B-TNFGY-69QQF-B8YKP-D69TJ
echo Enterprise 2016 LTSB : DCPHK-NFMTC-H88MJ-PFHPY-QJ4BJ
echo Enterprise 2016 LTSB N : QFFDN-GRT3P-VKWWX-X7T3R-8B639
echo.
set /p sn=Serial Number:
cscript slmgr.vbs /ipk "%sn%"
cscript slmgr.vbs /skms kms.lotro.cc
cscript slmgr.vbs /ato
pause && cls && goto :main
goto :eof

:end
choice /c YN /n /t 10 /d Y /m "Do you want exit the program (Y/N)?"
if %errorlevel% equ 1 exit /b
if %errorlevel% equ 2 cls && goto :main
goto :eof
