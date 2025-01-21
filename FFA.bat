@echo off
set regPath="HKCU\Software\Microsoft\Windows\CurrentVersion\Run"
set scriptPath="%~dp0hello.vbs"

echo Set objShell = CreateObject("WScript.Shell") > "%scriptPath%"
echo objShell.Popup "Kolay gelsin :)", 5, "FFA", 64 >> "%scriptPath%"

reg add "%regPath%" /v FFA /t REG_SZ /d "%scriptPath%" /f
echo "Added to CurrentVersion\Run."
