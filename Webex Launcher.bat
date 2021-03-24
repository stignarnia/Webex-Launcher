@echo off

if not exist webexisinstalled.txt (
	echo Controllo se Webex e' installato
	call checkwebexinstall.bat
)

call config.bat

@Mode 48,15
@Title %~n0
Batbox /h 0

:Loop
Call Button  4 4 %pulsante1% 30 4 %pulsante2% 17 8 %pulsante3% # Press
Getinput /m %Press% /h 70

:: Check for the pressed button 
if %errorlevel%==1 ("Webex Launcher 1.bat")
if %errorlevel%==2 ("Webex Launcher 2.bat")
if %errorlevel%==3 ("Webex Launcher 3.bat")
goto Loop