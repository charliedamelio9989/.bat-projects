@echo off
title pink fluffy Unicorns danceing Rainbows
setlocal enabledelayedexpansion

:: Define Colors and Symbols
set colors=4 5 6 2 1 3
set unicorn=ʕ•ᴥ•ʔ 🦄
set rainbow=🌈

:: Loop for Animation
:loop
for /l %%i in (1,1,50) do (
    cls
    set "spaces="
    for /l %%j in (1,1,%%i) do set "spaces=!spaces! "
    echo !spaces!%unicorn%
    echo !spaces!%rainbow%!rainbow%!rainbow%!rainbow%!rainbow%
    timeout /t 0 >nul
)

:: Restart Animation
goto loop
