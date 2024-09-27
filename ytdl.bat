ECHO OFF
CLS
:MENU
ECHO.
ECHO ...............................................
ECHO PRESS 1 OR 2 to select your task, or 3 to EXIT.
ECHO ...............................................
ECHO.
ECHO 1 - Download Youtube Channel Videos
ECHO 2 - Update Youtube-DL.exe
ECHO 3 - EXIT
ECHO.
SET /P M=Type 1, 2, or 3 then press ENTER: 
IF %M%==1 GOTO DOWNLOAD
IF %M%==2 GOTO UPDATE
IF %M%==3 GOTO EOF
:DOWNLOAD
set /p url= Paste Youtube Channel URL:
youtube-dl -f best -ciw -o “%%(title)s.%%(ext)s” -v %url%
Echo "Completed Download(s)."
pause
GOTO MENU
:UPDATE
youtube-dl -U
Echo "Completed Update."
pause
GOTO MENU
:EOF
Exit
