@echo off
FOR /F "usebackq tokens=2" %%i IN (`tasklist ^| findstr /r /b "RainbowSix.exe"`) DO nircmd.exe muteappvolume /%%i 1

