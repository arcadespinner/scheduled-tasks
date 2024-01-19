@echo off

REM Set the IP address of the PlayStation 5 on the network
REM NOTE: It's recommended to set a static IP (so it doesn't change)
SET PS5=192.168.1.76

REM Set the location where Plex Media Server is stored
SET PLEX_LOCATION="C:\Program Files (x86)\Plex\Plex Media Server\Plex Media Server.exe"

REM Try to ping the PS5
ping -n 1 %PS5% | findstr /r /c:"[0-9] *ms" >nul

REM If the device is online
if %errorlevel% == 0 (
	REM Check to see if Plex is already running
	tasklist /fi "imageName eq Plex Media Server.exe" | find ":" > nul
	
	REM If Plex is already running, we are done
	if errorlevel == 1 (
		exit
	) else (
		REM Otherwise, start Plex
		start "" %PLEX_LOCATION%
	)
)