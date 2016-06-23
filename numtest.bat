@echo on
for /f "delims=" %%a in (num.txt) do set compnumber=%%a
set /a divnumber=%compnumber%/2
set /a sum=%divnumber%*2
set /a newnum=%compnumber%+1
@echo "%newnum%"> num.txt

if %compnumber% NEQ %sum% goto odds
if %compnumber% EQU %sum% goto evens

:odds
FOR /F "usebackq tokens=2" %%i IN (`tasklist ^| findstr /r /b "RainbowSix.exe"`) DO nircmd.exe muteappvolume /%%i 1
goto end

:evens
FOR /F "usebackq tokens=2" %%i IN (`tasklist ^| findstr /r /b "RainbowSix.exe"`) DO nircmd.exe muteappvolume /%%i 0
goto end

:end