@echo off

:: Extract the full month name using WMIC
for /f "tokens=*" %%a in ('wmic path win32_localtime get month /format:list ^| findstr "="') do (
    for /f %%b in ("%%a") do set monthNumber=%%b
)

:: Use the WMIC object for month mapping
echo %monthNumber%
pause
