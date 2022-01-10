::------------------------------------------------------------------------------
:: NAME
::     Russian_Roulette.bat - Russian Roulette
::
:: DESCRIPTION
::     Your revolver have a single ammunition loaded in.
::     When you pulls it's trigger if it hit it,
::     your computer will automatically get shutdown.
::     There are a total of 6 slots for the bullets, so 1/6 chance of losing.
::
:: AUTHOR
::     IB_U_Z_Z_A_R_Dl
::
:: CREDITS
::     @Yeshi - Original project idea.
::     A project created in the "server.bat" Discord: https://discord.gg/GSVrHag
::------------------------------------------------------------------------------
@echo off
cls
mode 20,8
title Russian Roulette

set /a BULLET=%random%%%(6-1)+1

:L1
call :DRAW
echo       [Ready?]
>nul pause
set /a trigger=%random%%%(6-1)+1
call :DRAW %trigger%
echo [*PistolShootNoise*]
>nul 2>&1 timeout /t 1
if %trigger%==%BULLET% (
    echo   [*you are dead*]
    shutdown /s /t 2 /f /c "[*you are dead*]"
    goto :L2
)
goto :L1

:DRAW
cls
echo.
echo       ______.
echo     ~(_]----'   %1
echo    /_(U
echo.
exit /b

:L2
>nul 2>&1 timeout /t 60 /nobreak
goto :L2