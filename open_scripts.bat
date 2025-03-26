@echo off
setlocal enabledelayedexpansion

:: Fetch the public IP using curl
for /f "delims=" %%A in ('curl -s https://api64.ipify.org') do set "PublicIP=%%A"

:: Display the result
echo Your Public IP Address is: %PublicIP%

:: Pause to keep the window open
pause
