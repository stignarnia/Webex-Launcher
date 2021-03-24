@Echo off
call config.bat

@Mode 48,15
@Title %~n0
Batbox /h 0

:Loop
Call Button  4 4 %pulsante4% 30 4 %pulsante5% 17 8 %pulsante0% # Press
Getinput /m %Press% /h 70

:: Check for the pressed button 
if %errorlevel%==1 (start prof4)
if %errorlevel%==2 (start prof5)
if %errorlevel%==3 (exit)
goto Loop