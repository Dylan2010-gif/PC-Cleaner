::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFDJaWAGOAE+1BaAR7ebv/Na3gQ0+WOc+dorJ5rGWJdwa6UrYdpoo13RTlswzDxddfxyUbB07pmN9v2eKOfjN5lyzEhnH70g/ew==
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdFa5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJgZkkaHErSXA==
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQIRaCtbWwGQOn62RoU/qMv36uuJp19dUOcpfYPUyrGKYOIKqnztfZcjtg==
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFDJaWAGOAE+1BaAR7ebv/Na3gQ0+WOc+dorJ5rGWJdwjyQXHeZMs2H9I1s4UCXs=
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
net session >nul 2>&1
if %errorLevel% == 0 (
    goto :admin
) else (
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

:admin
cd /d "%~dp0"

:menu
cls
echo ==================================================================
echo
echo          Welcome to use Therebelight PC Cleaner!
echo          tg : Therebelight (If you want to contact me \^o^/)
echo	  Warning : Some apps will be closed when PC is being cleaned! (Package cache (USER / LOCAL))
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
taskkill /f /im RobloxPlayerBeta.exe
taskkill /f /im RobloxPlayerInstaller.exe
taskkill /f /im RobloxStudioInstaller.exe
taskkill /f /im RobloxCrashHandler.exe
taskkill /f /im RobloxPlayer.exe
taskkill /f /im Perplexity.exe
taskkill /f /im msedge.exe
taskkill /f /im OfficeC2RClient.exe
taskkill /f /im OfficeClickToRun.exe

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
    if exist "%%i\AppData\Local\Roblox\logs" (
        del /f /s /q "%%i\AppData\Local\Roblox\logs\*.*"
        for /d %%d in ("%%i\AppData\Local\Roblox\logs\*") do rmdir /s /q "%%d"
    )
)

for /d %%i in (C:\Users\*) do (
    if exist "%%i\AppData\Local\Roblox\Downloads\roblox-player" (
        del /f /s /q "%%i\AppData\Local\Roblox\Downloads\roblox-player\*.*"
        for /d %%d in ("%%i\AppData\Local\Roblox\Downloads\roblox-player\*") do rmdir /s /q "%%d"
    )
)

for /d %%i in (C:\Users\*) do (
    if exist "%%i\AppData\Local\CrashDumps" (
        del /f /s /q "%%i\AppData\Local\CrashDumps\*.*"
        for /d %%d in ("%%i\AppData\Local\CrashDumps\*") do rmdir /s /q "%%d"
    )
)

start explorer.exe

echo [Done!]
pause
goto menu

:ACTION_H
echo.
echo [This Program will be exit in a few seconds.]
timeout /t 5 >nul
exit