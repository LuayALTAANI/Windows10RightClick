@echo off

REM simple GUI1
::--------------------------------------------------------------------------------------------
:start

echo.
echo     *************************************************************************
echo     ***                                                                   ***
echo     ***                L E F T     C L I C K      M E N U                 ***
echo     ***                                                                   ***
echo     ***                                                                   ***
echo     ***          1. W I N D O W S     1 0 .      (reboot is required)     ***
echo     ***                                                                   ***
echo     ***          2. W I N D O W S     1 1 .      (default)                ***
echo     ***                                                                   ***
echo     ***          0. E X I T .                                             ***
echo     ***                                                                   ***
echo     ***                                                                   ***
echo     ***           Change the behavior of the left-click context           ***
echo     ***           menu in Windows 11 , it work just in windows 11         ***
echo     ***                                                                   ***
echo     ***  Created by : Luay AL-TAANI                      version : 0.0.1  ***
echo     ***                                                                   ***
echo     *************************************************************************
echo.
echo.
echo.
echo.
echo.
echo.
echo.
set "I="
set /p I= pick action:
cls
for %%g in (0 1 2) do if /i "%I%"=="%%~g" goto AC%I% 
cls
echo Not found.
goto start

REM simple GUI
::--------------------------------------------------------------------------------------------


REM simple GUI2
::--------------------------------------------------------------------------------------------
:TR

echo.
echo     *************************************************************************
echo     ***                                                                   ***
echo     ***              R E B O O T     I S     R E Q U I R E D              ***
echo     ***                                                                   ***
echo     ***                                                                   ***
echo     ***          1. W I N D O W S     1 1 .      (default)                ***
echo     ***                                                                   ***
echo     ***          2. R E - B O O T     N O W                               ***
echo     ***                                                                   ***
echo     ***          0. E X I T .                    (reboot later)           ***
echo     ***                                                                   ***
echo     ***                                                                   ***
echo     ***           Change the behavior of the left-click context           ***
echo     ***           menu in Windows 11 , it work just in windows 11         ***
echo     ***                                                                   ***
echo     ***  Created by : Luay AL-TAANI                      version : 0.0.1  ***
echo     ***                                                                   ***
echo     *************************************************************************
echo.
echo.
echo.
echo.
echo.
echo.
echo.
set "I="
set /p I= pick action:
cls
for %%g in (0 1 2) do if /i "%I%"=="%%~g" goto TR%I% 
cls
echo Not found.
goto start

:TR1
goto AC2

:TR2
goto AC3

:TR0
goto AC0

REM simple GUI
::--------------------------------------------------------------------------------------------

:AC1
cls
reg add "HKEY_CURRENT_USER\SOFTWARE\CLASSES\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /ve /t REG_EXPAND_SZ /d "" /f
echo Left-click context menu behavior has been changed to Windows 10 style.
goto TR

:AC2
cls
reg delete "HKEY_CURRENT_USER\SOFTWARE\CLASSES\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}" /f
echo Left-click context menu behavior has been reset to its default value in Windows 11.
goto start

:AC3
cls
echo System is going to Reboot now
TIMEOUT 5 >nul
slidetoshutdown.exe
goto AC0


:AC0
exit

