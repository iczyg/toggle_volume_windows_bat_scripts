@echo off

:start
for /f "delims=" %%a in (num.txt) do set compnumber=%%a
set /a foo=%compnumber%%%2
echo %foo%
if %foo% equ 0 goto :evens1
if %foo% neq 0 goto :odds1
GOTO:eof

:odds1
FOR /F "usebackq tokens=2" %%i IN (`tasklist ^| findstr /r /b "RainbowSix.exe"`) DO nircmd.exe muteappvolume /%%i 1
set /a newnum=%compnumber%+1
@echo "%newnum%"> num.txt
@echo "shit"> bla.txt
GOTO:eof

:evens1
FOR /F "usebackq tokens=2" %%i IN (`tasklist ^| findstr /r /b "RainbowSix.exe"`) DO nircmd.exe muteappvolume /%%i 0
set /a newnum=%compnumber%+1
@echo "%newnum%"> num.txt
@echo "fuck"> bla.txt
GOTO:eof