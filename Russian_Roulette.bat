@echo off
::------------------------------------------------------------------------------
:: NAME
::     Russian_Roulette.bat - Russian Roulette
::
:: DESCRIPTION
::     When the pistol shoot, if the bullet hit 0
::     your computer will get automatically shutdown.
::     There are a total of 6 bullets, so 1/6 chance of loosing.
::
:: AUTHOR
::     IB_U_Z_Z_A_R_Dl
::
:: CREDITS
::     @Yeshi - Original project idea.
::     A project created in the "server.bat" Discord: https://discord.gg/GSVrHag
::------------------------------------------------------------------------------
title Russian Roulette
mode 20,8

:L1
set x=
cls
echo       [Ready?]
call :DRAW
set /a x=%random%%%7
>nul pause
call :DRAW
echo [*PistolShootNoise*]
>nul 2>&1 timeout /t 0
if %x%==0 (
    echo   [*you are dead*]
    shutdown /s /t 2 /f /c "[*you are dead*]"
    goto :L2
)
goto :L1

:DRAW
cls
echo:
echo       ______.
echo     ~(_]----'   %x%
echo    /_(U
echo:
exit /b

:L2
goto :L2