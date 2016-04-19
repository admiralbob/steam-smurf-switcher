::By jfx.

ECHO OFF
setlocal enabledelayedexpansion

:: Dont change these two
set currentuser=null
set currentpassword=null

:: ---------------------------------------------------------------------------------------------------------

:: MODIFY THIS TO YOUR STEAM PATH IF IT ISNT THE DEFAULT PATH AND YOU AREN'T RUNNING 64BIT
:: IF YOU ARE 64 BIT WITH DEFAULT SETTINGS, DON'T WORRY!
:: 64 Bit with Steam located in Program Files(x86)\Steam\
:: 32 bit with Steam located in Program Files\Steam\
SET steampath="%programfiles(x86)%\Steam\steam.exe"

:: ---------------------------------------------------------------------------------------------------------
:: YOUR STEAM ACCOUNTS HERE
:: MODIFY THE USERNAMEX AND PASSWORDX AFTER ACC_USERNAMEX

SET acc_username[1]=changeme
SET acc_password[1]=changeme

SET acc_username[2]=changeme
SET acc_password[2]=changeme

SET acc_username[3]=changeme
SET acc_password[3]=changeme

SET acc_username[4]=changeme
SET acc_password[4]=changeme

SET acc_username[5]=changeme
SET acc_password[5]=changeme

SET acc_username[6]=changeme
SET acc_password[6]=changeme

SET acc_username[7]=changeme
SET acc_password[7]=changeme

SET acc_username[8]=changeme
SET acc_password[8]=changeme

SET acc_username[9]=changeme
SET acc_password[9]=changeme

SET acc_username[10]=changeme
SET acc_password[10]=changeme

SET acc_username[10]=changeme
SET acc_password[10]=changeme

SET acc_username[11]=changeme
SET acc_password[11]=changeme

SET acc_username[12]=changeme
SET acc_password[12]=changeme

SET accounts=12
:: ^^^^CHANGE THIS TO THE NUMBER OF ACCOUNTS YOU HAVE LISTED^^^^

:: ---------------------------------------------------------------------------------------------------------
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

for /l %%n in (1,1,%accounts%) do (
	ECHO %%n - !acc_username[%%n]!
)
ECHO.
SET /P M=Type the number for the account then press ENTER: 


for /l %%n in (1, 1, %M%) do (
   set currentuser=!acc_username[%%n]!
   set currentpassword=!acc_password[%%n]!
)
goto login

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
