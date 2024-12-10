
@echo off
title MAKE PC GREAT AGAIN - ANON.NET
color 0a
cls

:: Display hacker-style banner
echo ============================================================
echo          ___  ___        _         _   _  ___ _   _
echo          ^|  \/  ^|       ^| ^|       ^| \ ^| ^|/ _ \ ^| ^| ^|       
echo          ^| .  . ^|_   _  ^| ^| _____ ^|  \^| / /_\ \ ^| ^|        
echo          ^| ^|\/^| ^| ^| ^| ^| ^| ^|/ / _ \^| . ` ^|  _  ^| ^| ^|        
echo          ^| ^|  ^| ^| ^|_^| ^| ^|   < (_) ^| ^|^\  ^| ^| ^| ^|_^| ^|       
echo           \_^|  \_^|\__,_^| ^|_^\_\___/\_^| \_^|_^| \_^(_^|_)
echo                     MADE BY ANON.NET
echo ============================================================
echo.
echo Cleaning PC... Please wait.
echo.

:: Clear temporary files
echo Cleaning temporary files...
if exist "%temp%\*" (
    del /f /s /q "%temp%\*" >nul 2>&1
    rd /s /q "%temp%" >nul 2>&1
    mkdir "%temp%" >nul 2>&1
)

:: Clear prefetch files
echo Cleaning prefetch files...
if exist "C:\Windows\Prefetch\*" (
    del /f /s /q "C:\Windows\Prefetch\*" >nul 2>&1
)

:: Clear Recycle Bin
echo Emptying Recycle Bin...
if exist "C:\$Recycle.Bin" (
    rd /s /q "C:\$Recycle.Bin" >nul 2>&1
)

:: Clear Windows Update cache
echo Cleaning Windows Update cache...
if exist "C:\Windows\SoftwareDistribution\Download\*" (
    del /f /s /q "C:\Windows\SoftwareDistribution\Download\*" >nul 2>&1
)

:: Perform disk cleanup
echo Performing disk cleanup...
cleanmgr /sagerun:1 >nul 2>&1

:: Add some fake hacker effects
echo Executing deep optimization protocols...
ping localhost -n 3 >nul
echo Injecting performance boost...
ping localhost -n 2 >nul
echo Encrypting trash data... (just kidding)
ping localhost -n 2 >nul

:: Completion message
cls
echo ============================================================
echo               PC CLEANUP COMPLETE!                         
echo         Your PC is now **MADE GREAT AGAIN**!               
echo ============================================================
echo.
pause
exit
