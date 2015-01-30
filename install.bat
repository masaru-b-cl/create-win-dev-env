@echo off
cd /d %~d0%~p0

@echo on
cmd /c install-chocolatey.bat

set PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin

cmd /c install-infra.bat
