@echo off 
net session >nul 2>&1
 
if %ERRORLEVEL% equ 0 (
  goto install
) else (
  echo no administrator
  echo please run as administrator
  goto exit
)

:install

mkdir "C:\Program Files\Tor-system"
xcopy %~dp0Tor "C:\Program Files\Tor-system"
cd "C:\Program Files\Tor-system"
start tor.exe --service install
echo Successfully installed tor service

:exit
pause
