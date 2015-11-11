::By jfx.

ECHO OFF

:: DONT CHANGE THESE TWO!!!!!
set currentuser=null
set currentpassword=null

:: Modify this to your steam path
:: If you're 32bit comment the top line and uncomment the bottom one

::64 Bit with Steam located in Program Files(x86)\Steam\
SET steampath="%programfiles(x86)%\Steam\steam.exe"

::32 bit with Steam located in Program Files\Steam\ UNCOMMENT BELOW IF YOU'RE 32BIT
::SET steampath="%programfiles%\Steam\steam.exe"

REM If your steam is located somewhere else modify the top line to the full path, remember the speech marks!!


:: YOUR STEAM ACCOUNTS HERE
:: MODIFY THE USERNAMEX AND PASSWORDX AFTER ACC_USERNAMEX

SET acc_username1=changeme
SET acc_password1=changeme

SET acc_username2=changeme
SET acc_password2=changeme

SET acc_username3=changeme
SET acc_password3=changeme

SET acc_username4=changeme
SET acc_password4=changeme

SET acc_username5=changeme
SET acc_password5=changeme

SET acc_username6=changeme
SET acc_password6=changeme

SET acc_username7=changeme
SET acc_password7=changeme

SET acc_username8=changeme
SET acc_password8=changeme

SET acc_username9=changeme
SET acc_password9=changeme

::Script begins

CLS
:MENU
ECHO.
ECHO ...............................................
ECHO Steam Smurf Switcher
ECHO ...............................................
ECHO Welcome to the Steam Smurf Switcher
ECHO If this is your first time using this tool, read the steps below.
ECHO To set your accounts close this window, then open the tool in notepad.
ECHO The easiest way to do that is to right click on the tool and click edit.
ECHO.
ECHO 1 - %acc_username1%
ECHO 2 - %acc_username2%
ECHO 3 - %acc_username3%
ECHO 4 - %acc_username4%
ECHO 5 - %acc_username5%
ECHO 6 - %acc_username6%
ECHO 7 - %acc_username7%
ECHO 8 - %acc_username8%
ECHO 9 - %acc_username9%
ECHO 0 - EXIT
ECHO.
SET /P M=Type the number for the account then press ENTER: 
IF %M%==1 (
	set currentuser=%acc_username1%
	set currentpassword=%acc_password1%
	goto login
)
IF %M%==2 (
	set currentuser=%acc_username2%
	set currentpassword=%acc_password2%
	goto login
)
IF %M%==3 (
	set currentuser=%acc_username3%
	set currentpassword=%acc_password3%
	goto login
)
IF %M%==4 (
	set currentuser=%acc_username4%
	set currentpassword=%acc_password4%
	goto login
)
IF %M%==5 (
	set currentuser=%acc_username5%
	set currentpassword=%acc_password5%
	goto login
)
IF %M%==6 (
	set currentuser=%acc_username6%
	set currentpassword=%acc_password6%
	goto login
)
IF %M%==7 (
	set currentuser=%acc_username7%
	set currentpassword=%acc_password7%
	goto login
)
IF %M%==8 (
	set currentuser=%acc_username8%
	set currentpassword=%acc_password8%
	goto login
)
IF %M%==9 (
	set currentuser=%acc_username9%
	set currentpassword=%acc_password9%
	goto login
)
IF %M%==0 exit


:login
ECHO.
ECHO Killing Steam.exe
taskkill /f /im steam.exe
ECHO Waiting 3 seconds until starting Steam again.
timeout /t 3 /nobreak
ECHO Starting Steam as %currentuser%
start "" %steampath% -login %currentuser% %currentpassword%
pause
exit
