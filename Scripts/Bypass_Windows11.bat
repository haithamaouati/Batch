@echo off
title Bypass Windows 11
mode 80,25
color 07
REM Bypass Windows 11
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
echo Bypass Windows 11 System Requirements
echo.
echo  Author: Haitham Aouati
echo  Social: @haithamaouati
echo.
echo 1) Bypass Requirements
echo 2) Bypass Requirements (Registry file)
echo.
echo 0) Exit
echo.
set /p input=Input:
if %input% gtr 2 cls && goto :main
if %input% == 1 cls && goto :bypass
if %input% == 2 cls && goto :runreg
if %input% == 0 cls && goto :end
goto :eof

:bypass
echo Bypass Windows 11 System Requirements
echo.
echo  * Bypass CPU Check
echo  * Bypass Storage Check
echo  * Bypass RAM Check
echo  * Bypass TPM Check
echo  * Bypass SecureBoot Check
echo  * Allow Upgrade With Unsupported TPM or CPU
echo.
reg add HKEY_LOCAL_MACHINE\SYSTEM\Setup\LabConfig /v BypassCPUCheck /f /t REG_DWORD /d 00000001
reg add HKEY_LOCAL_MACHINE\SYSTEM\Setup\LabConfig /v BypassStorageCheck /f /t REG_DWORD /d 00000001
reg add HKEY_LOCAL_MACHINE\SYSTEM\Setup\LabConfig /v BypassRAMCheck /f /t REG_DWORD /d 00000001
reg add HKEY_LOCAL_MACHINE\SYSTEM\Setup\LabConfig /v BypassTPMCheck /f /t REG_DWORD /d 00000001
reg add HKEY_LOCAL_MACHINE\SYSTEM\Setup\LabConfig /v BypassSecureBootCheck /f /t REG_DWORD /d 00000001
reg add HKEY_LOCAL_MACHINE\SYSTEM\Setup\MoSetup /v AllowUpgradesWithUnsupportedTPMOrCPU /f /t REG_DWORD /d 00000001
echo Go back to previous back and then go to the next page to proceed.
echo The "Unsupported" screen should no longer appear and you can continue the installation.
echo.
pause && cls & goto :main
goto :eof

:runreg
echo Bypass Windows 11 System Requirements
echo.
echo  * Bypass CPU Check
echo  * Bypass Storage Check
echo  * Bypass RAM Check
echo  * Bypass TPM Check
echo  * Bypass SecureBoot Check
echo  * Allow Upgrade With Unsupported TPM or CPU
echo.
if exist BypassWin11.reg (
    start BypassWin11.reg
    echo The "Unsupported" screen should no longer appear and you can continue the installation.
) else (
    echo File doesn't exist
)
echo.
pause && cls & goto :main
goto :eof

:end
choice /c YN /n /t 10 /d Y /m "Do you want exit the program (Y/N)?"
if %errorlevel% equ 1 exit /b
if %errorlevel% equ 2 cls && goto :main
goto :eof