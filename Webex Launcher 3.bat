@Echo off
call config.bat

@Mode 48,15
@Title %~n0
Batbox /h 0

:Loop
Call Button  4 4 %pulsante8% 30 4 %pulsante9% 17 8 %pulsante0% # Press
Getinput /m %Press% /h 70

:: Check for the pressed button 
if %errorlevel%==1 (start prof8)
if %errorlevel%==2 (start prof9)
if %errorlevel%==3 (exit)
goto Loop