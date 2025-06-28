@echo off
title TPM Bypass Restore Tool
color 0A

echo ========================================
echo      Restoring system requirements...
echo ========================================

REM Requires admin privileges
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if %errorlevel% NEQ 0 (
    echo This script must be run as Administrator.
    pause
    exit /b
)

REM Delete the LabConfig key
reg delete "HKLM\SYSTEM\Setup\LabConfig" /f >nul 2>&1

if %errorlevel% EQU 0 (
    echo LabConfig registry key removed successfully.
) else (
    echo LabConfig key not found or already removed.
)

echo.
echo Done. Please restart your computer to apply changes.
pause
exit
