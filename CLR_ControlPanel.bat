::Makes everything work
@echo off
::Title of the window
title CLR Control Panel
::Color of the Text and Background of the CMD
color 0A

::Its a code for the menu
:start
::Clears text from before
cls
::Text Display
echo Select an Option
echo.
echo 1. Actiavte CLR
echo 2. Deactivate CLR
::Code for selecting an option
set /p "wybieram:=Option:"
if %wybieram:%==1 goto aclr
if %wybieram:%==2 goto dclr

::Activates CapsLock Randomizer
:aclr
cls
::Activates CLR
start CLR_Activate.vbs
::Text Display Again
echo Activated
::Press any key to continue
pause >nul
::Goes back to menu
goto start

::Deactivates CLR 
:dclr
cls
taskkill /f /t /im wscript.exe
cls
echo Deactivated
pause >nul
goto start
