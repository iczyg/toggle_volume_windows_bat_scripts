@echo off
SETLOCAL ENABLEEXTENSIONS
SETLOCAL DISABLEDELAYEDEXPANSION

for /f "delims=" %%a in (num.txt) do set compnumber=%%a
set /a foo=%compnumber%%2
IF %foo% NEQ 0 (
    ::if1
    FOR /F "usebackq tokens=2" %%i IN (`tasklist ^| findstr /r /b "RainbowSix.exe"`) DO nircmd.exe muteappvolume /%%i 1
    set /a newnum=%compnumber%+1
    @echo "%newnum%"> num.txt
    GOTO:eof
    )

IF %foo% EQU 0 (
    ::if0
    FOR /F "usebackq tokens=2" %%i IN (`tasklist ^| findstr /r /b "RainbowSix.exe"`) DO nircmd.exe muteappvolume /%%i 0
    set /a newnum=%compnumber%+1
    @echo "%newnum%"> num.txt
    GOTO:eof
    ) ELSE (
        GOTO:eof
           )
