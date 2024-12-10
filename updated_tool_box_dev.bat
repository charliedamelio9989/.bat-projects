@echo off
:: AK ITA Multi-Tool by Anon.Net
title AK ITA Multi-Tool by Anon.Net
color 4

:banners
cls
echo   █████╗ ██╗  ██╗    ██╗████████╗ █████╗ 
echo  ██╔══██╗╚██╗██╔╝    ██║╚══██╔══╝██╔══██╗
echo  ███████║ ╚███╔╝     ██║   ██║   ███████║
echo  ██╔══██║ ██╔██╗     ██║   ██║   ██╔══██║
echo  ██║  ██║██╔╝ ██╗    ██║   ██║   ██║  ██║
echo  ╚═╝  ╚═╝╚═╝  ╚═╝    ╚═╝   ╚═╝   ╚═╝  ╚═╝
echo.
echo        WELCOME TO THE AK ITA MULTI-TOOL
echo ------------------------------------------------
echo.
echo       Select a theme to begin:
echo       1. Akatsuki Cloud Banner
echo       2. Naruto-Themed Banner
echo.
set /p theme_choice="Enter choice (1 or 2): "

if "%theme_choice%"=="1" goto akatsuki_banner
if "%theme_choice%"=="2" goto naruto_banner
goto banners

:akatsuki_banner
cls
echo.
echo   ⠀⠀⠀⠀⠀⠀⠀⠀⣤⣤⣤⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀
echo   ⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀⠀
echo   ⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⡀⠀⠀⠀⠀⠀⠀
echo   ⠀⠀⠀⠀⠀⣿⣿⡿⠛⠛⠛⠛⢿⣿⣿⠀⠀⠀⠀⠀⠀
echo   ⠀⠀⠀⠀⢸⣿⡇⠀⠀⠀⠀⠀⠀⢹⣿⡇⠀⠀⠀⠀⠀
echo   ⠀⠀⠀⠀⢸⣿⡇⠀⢀⣤⣤⣄⡀⢸⣿⡇⠀⠀⠀⠀⠀
echo   ⠀⠀⠀⠀⠀⣿⣿⣷⣾⣿⣿⣿⣿⣿⣿⠃⠀⠀⠀⠀⠀
echo   ⠀⠀⠀⠀⠀⠘⣿⣿⣿⣿⣿⣿⣿⣿⡟⠀⠀⠀⠀⠀⠀
echo   ⠀⠀⠀⠀⠀⠀⠘⣿⣿⣿⣿⣿⣿⡿⠀⠀⠀⠀⠀⠀⠀
echo   ⠀⠀⠀⠀⠀⠀⠀⠈⠛⠻⠿⠟⠋⠀⠀⠀⠀⠀⠀⠀⠀
echo -------------------------------------------------
pause >nul
goto menu

:naruto_banner
cls
echo.
echo ░█▀▄░█▀▀░█▀▀░█▀▀░█░█░█▀▀░█▀▀░░░█▀▀░█░█░█▀▀░█▀▀░█▀▀
echo ░█░█░█▀▀░▀▀█░▀▀█░█▀▄░█▀▀░█░█░░░█░█░█▀█░█░█░█▀▀░▀▀█
echo ░▀▀░░▀▀▀░▀▀▀░▀▀▀░▀░▀░▀▀▀░▀▀▀░░░▀▀▀░▀░▀░▀▀▀░▀▀▀░▀▀▀
echo.
echo     ⠀⠀⠀⢀⣀⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo     ⠀⢀⣴⣿⣿⣿⣿⣷⣶⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo     ⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⡀⠀⠀⠀⠀⠀
echo     ⠘⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡀⠀⠀⠀⠀
echo     ⠀⠀⠈⠻⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀
echo     ⠀⠀⠀⠀⠀⠀⠈⠉⠙⠻⣿⣿⣿⣿⣿⣿⡀⠀⠀⠀
echo     ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣿⣿⣿⣿⣿⣷⡀⠀⠀
echo     ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠿⣿⣿⣿⣿⣷⡀⠀
echo -------------------------------------------------
pause >nul
goto menu

:menu
cls
echo AK ITA Multi-Tool Options:
echo -----------------------------------
echo 1. Open Notepad
echo 2. Display a Joke
echo 3. Show System Info
echo 4. Open Calculator
echo 5. Launch Paint
echo 6. Create a Test File
echo 7. Display Current Time and Date
echo 8. Open Task Manager
echo 9. Disk Cleanup
echo 10. Check Network Configuration
echo 11. Check Internet Connection
echo 12. List Running Processes
echo 13. Shut Down Computer
echo 14. Restart Computer
echo 15. Exit
echo.
set /p choice="Select an option (1-15): "

if "%choice%"=="1" goto notepad
if "%choice%"=="2" goto joke
if "%choice%"=="3" goto sysinfo
if "%choice%"=="4" goto calculator
if "%choice%"=="5" goto paint
if "%choice%"=="6" goto testfile
if "%choice%"=="7" goto datetime
if "%choice%"=="8" goto taskmanager
if "%choice%"=="9" goto cleanup
if "%choice%"=="10" goto network
if "%choice%"=="11" goto pingtest
if "%choice%"=="12" goto processes
if "%choice%"=="13" goto shutdown
if "%choice%"=="14" goto restart
if "%choice%"=="15" exit
echo Invalid choice! Try again.
pause >nul
goto menu


:: Option to Display Current IP Address
:show_ip
cls
echo Retrieving your current IP address...
for /f "tokens=2 delims=:" %%A in ('ipconfig ^| findstr "IPv4"') do set myip=%%A
echo Your IP Address: %myip%
pause
goto main

:: Option to Show Open Ports
:show_ports
cls
echo Displaying open ports...
netstat -a
pause
goto main

:: Option to Display Coordinates (placeholder for now)
:show_coords
cls
echo Coordinates functionality is currently a placeholder.
echo Please use an external service or API for accurate GPS location.
pause
goto main

