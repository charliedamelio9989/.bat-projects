@echo off
title [graves tool box] made by - anon.NET
color 0C

:graves_banner
cls
echo.
echo        _      _      _      _
echo       ||     ||     ||     ||
echo    __ || __  || __  || __  ||
echo   |  |||  || ||  || ||  || ||  |
echo   |__|||__|| ||__|| ||__|| ||__|
echo       ||     ||     ||     ||
echo      //\\   //\\   //\\   //\\
echo     //  \\ //  \\ //  \\ //  \\
echo.
pause
goto main

:: User credentials (stored in the script for simplicity)
set "username=anon.NET"
set "password=cum.net"

:: Login Prompt
:login
cls
echo ===============================================================
echo     Welcome to Graves Tool box - inspired by graves my friend
echo ===============================================================
echo.
set /p user=Enter Username: 
set /p pass=Enter Password: 
if "%user%"=="%username%" if "%pass%"=="%password%" (
    echo Login successful!
    timeout /t 1 >nul
    goto main
) else (
    echo Invalid credentials. Try again.
    timeout /t 2 >nul
    goto login
)

:: Main Menu
:main
cls
echo ==========================
echo        Mod Multi-Tool
echo ==========================
echo 1. Show Current IP Address
echo 2. Show Open Ports
echo 3. Placeholder Coordinates
echo 4. System Info
echo 5. List Running Processes
echo 6. Kill a Process
echo 7. Create a Text File
echo 8. Open Notepad
echo 9. Open Calculator
echo 10. Launch Task Manager
echo 11. Open Control Panel
echo 12. System Shutdown
echo 13. System Restart
echo 14. Disk Space Check
echo 15. Internet Ping Test
echo 16. Show Active Connections
echo 17. Create a New Folder
echo 18. Clear Temp Files
echo 19. Fun ASCII Art Banner
echo 20. Exit
echo ==========================
choice /c 123456789ABCDEFGHIJKL /m "Select an option:"

if errorlevel 20 goto exit
if errorlevel 19 goto banner
if errorlevel 18 goto clear_temp
if errorlevel 17 goto new_folder
if errorlevel 16 goto show_connections
if errorlevel 15 goto ping_test
if errorlevel 14 goto disk_check
if errorlevel 13 goto restart
if errorlevel 12 goto shutdown
if errorlevel 11 goto control_panel
if errorlevel 10 goto task_manager
if errorlevel 9 goto calculator
if errorlevel 8 goto notepad
if errorlevel 7 goto create_file
if errorlevel 6 goto kill_process
if errorlevel 5 goto processes
if errorlevel 4 goto sysinfo
if errorlevel 3 goto show_coords
if errorlevel 2 goto show_ports
if errorlevel 1 goto show_ip

:: Option 1: Show Current IP Address
:show_ip
cls
for /f "tokens=2 delims=:" %%A in ('ipconfig ^| findstr "IPv4"') do set myip=%%A
echo Your IP Address: %myip%
pause
goto main

:: Option 2: Show Open Ports
:show_ports
cls
netstat -a
pause
goto main

:: Option 3: Placeholder Coordinates
:show_coords
cls
echo Coordinates functionality is currently unavailable.
pause
goto main

:: Option 4: System Info
:sysinfo
cls
systeminfo
pause
goto main

:: Option 5: List Running Processes
:processes
cls
tasklist
pause
goto main

:: Option 6: Kill a Process
:kill_process
cls
set /p pname=Enter the name of the process to kill (e.g., notepad.exe): 
taskkill /im %pname% /f
pause
goto main

:: Option 7: Create a Text File
:create_file
cls
set /p filename=Enter the name of the file to create: 
echo Enter your text below. Press Ctrl+Z and Enter to save.
copy con %filename%.txt
pause
goto main

:: Option 8: Open Notepad
:notepad
start notepad
goto main

:: Option 9: Open Calculator
:calculator
start calc
goto main

:: Option 10: Launch Task Manager
:task_manager
start taskmgr
goto main

:: Option 11: Open Control Panel
:control_panel
start control
goto main

:: Option 12: System Shutdown
:shutdown
cls
echo Shutting down the system...
shutdown /s /t 0
pause
goto main

:: Option 13: System Restart
:restart
cls
echo Restarting the system...
shutdown /r /t 0
pause
goto main

:: Option 14: Disk Space Check
:disk_check
cls
echo Checking disk space...
wmic logicaldisk get size,freespace,caption
pause
goto main

:: Option 15: Internet Ping Test
:ping_test
cls
echo Testing internet connection by pinging Google...
ping www.google.com
pause
goto main

:: Option 16: Show Active Connections
:show_connections
cls
netstat -an
pause
goto main

:: Option 17: Create a New Folder
:new_folder
cls
set /p foldername=Enter the name of the folder to create: 
mkdir %foldername%
echo Folder "%foldername%" created.
pause
goto main

:: Option 18: Clear Temp Files
:clear_temp
cls
echo Clearing temporary files...
del /q /f %temp%\*
pause
goto main

:: Option 19: Fun ASCII Art Banner
:banner
cls
echo ==========================
echo         (^_^)
echo     Welcome to Fun!
echo ==========================
pause
goto main

:: Exit Option
:exit
cls
echo Goodbye!
timeout /t 2 >nul
exit
