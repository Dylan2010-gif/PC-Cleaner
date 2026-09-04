@echo off

:menu
cls
echo ==================================================================
echo
echo          Welcome to use Therebelight PC Cleaner for WINPE!
echo          tg : Therebelight (If you want to contact me \^o^/)
echo
echo          [A] Clean Windows update cache
echo          [B] Windows Temp
echo          [C] Kaspersky Setup Files
echo          [D] Package cache (Program Data)
echo          [E] Log file (Program Data)
echo          [F] Apple software installer cache
echo          [G] Package cache (USER / LOCAL)
echo          [H] Quit this Program

choice /c abcdefgh /m "Press key on keyboard to continue"

if errorlevel 8 goto ACTION_H
if errorlevel 7 goto ACTION_G
if errorlevel 6 goto ACTION_F
if errorlevel 5 goto ACTION_E
if errorlevel 4 goto ACTION_D
if errorlevel 3 goto ACTION_C
if errorlevel 2 goto ACTION_B
if errorlevel 1 goto ACTION_A

:ACTION_A
echo.
echo [Cleaning...]
rd /s /q "C:\Windows\SoftwareDistribution"
echo [Done!]
pause
goto menu

:ACTION_B
echo.
echo [Cleaning...]
rd /s /q "C:\Windows\Temp"
echo [Done!]
pause
goto menu

:ACTION_C
echo.
echo [Cleaning...]
rd /s /q "C:\ProgramData\Kaspersky Lab Setup Files"
echo [Done!]
pause
goto menu

:ACTION_D
echo.
echo [Cleaning...]
rd /s /q "C:\ProgramData\Package Cache"
echo [Done!]
pause
goto menu

:ACTION_E
echo.
echo [Cleaning...]
rd /s /q "C:\ProgramData\local\temp"
echo [Done!]
pause
goto menu

:ACTION_F
echo.
echo [Cleaning...]
rd /s /q "C:\ProgramData\Apple\Installer Cache"
echo [Done!]
pause
goto menu

:ACTION_G
echo.
echo [Cleaning...]

for /d %%i in (C:\Users\*) do (
    if exist "%%i\AppData\Local\Temp" (
        del /f /s /q "%%i\AppData\Local\Temp\*.*"
        for /d %%d in ("%%i\AppData\Local\Temp\*") do rmdir /s /q "%%d"
    )
)

for /d %%i in (C:\Users\*) do (
    if exist "%%i\AppData\Local\perplexity-updater" (
        del /f /s /q "%%i\AppData\Local\perplexity-updater\*.*"
        for /d %%d in ("%%i\AppData\Local\perplexity-updater\*") do rmdir /s /q "%%d"
    )
)

for /d %%i in (C:\Users\*) do (
    if exist "%%i\AppData\Local\npm-cache" (
        del /f /s /q "%%i\AppData\Local\npm-cache\*.*"
        for /d %%d in ("%%i\AppData\Local\npm-cache\*") do rmdir /s /q "%%d"
    )
)

for /d %%i in (C:\Users\*) do (
    if exist "%%i\AppData\Local\D3DSCache" (
        del /f /s /q "%%i\AppData\Local\D3DSCache\*.*"
        for /d %%d in ("%%i\AppData\Local\D3DSCache\*") do rmdir /s /q "%%d"
    )
)


for /d %%i in (C:\Users\*) do (
    if exist "%%i\AppData\Local\CrashDumps" (
        del /f /s /q "%%i\AppData\Local\CrashDumps\*.*"
        for /d %%d in ("%%i\AppData\Local\CrashDumps\*") do rmdir /s /q "%%d"
    )
)

echo [Done!]
pause
goto menu

:ACTION_H
echo.
echo [This Program will be exit in a few seconds.]
timeout /t 5 >nul
exit
