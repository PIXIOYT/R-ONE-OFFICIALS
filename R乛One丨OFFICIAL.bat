@ECHO OFF

title  [ CMD Tool ] by ..::R-ONE::.. 
C:
CD\
CLS
color 02

:MENU
CLS
echo      !!!!          !!!!  !!!!!!!!!!!  !!!!           !!!!       !!!!      !!!!!        !!!!!   !!!!!!!!!!!
echo      !!!!          !!!!  !!!!         !!!!         !!!   !!   !!!  !!!    !!!! !!    !! !!!!   !!!!
echo      !!!!    !!    !!!!  !!!!         !!!!        !!         !!      !!   !!!!  !!  !!  !!!!   !!!!
echo      !!!!   !!!!   !!!!  !!!!!!!!     !!!!       !!         !!        !!  !!!!   !!!!   !!!!   !!!!!!!!
echo      !!!!  !!  !!  !!!!  !!!!         !!!!        !!         !!      !!   !!!!    !!    !!!!   !!!!
echo      !!!! !!    !! !!!!  !!!!         !!!!         !!!   !!   !!!  !!!    !!!!          !!!!   !!!!
echo      !!!!!        !!!!!  !!!!!!!!!!!  !!!!!!!!!!!    !!!!       !!!!      !!!!          !!!!   !!!!!!!!!!! 
echo =-==-==-==-==-==-==-==-==-==-==-==-==-==-==-==-==-==-==-==-==-==-==-==-==-==-==-==-==-==-==-==-==-==-==-==
ECHO                                              ( R-ONE OFFICIAL )
ECHO                                           All-in-One Command Tool
ECHO =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-==-==-==-==-==-==-==-==-=
ECHO ================================================= MENU NAME ==============================================
ECHO ----------------------------------------------------------------------------------------------------------
ECHO                                            1.  Network Reset
ECHO                                            2.  Clean PC
ECHO                                            3.  Kill All Emulator 
ECHO                                            4.  R-ONE Discord
ECHO -----------------------------------------------------------------------------------------------------------
ECHO ============================================= PRESS 'Q' TO QUIT ===========================================
ECHO.

SET INPUT=
SET /P INPUT=Please select a number:

IF /I '%INPUT%'=='1' GOTO DNS and Network Reset
IF /I '%INPUT%'=='2' GOTO Clean PC
IF /I '%INPUT%'=='3' GOTO Kill All Emulator
IF /I '%INPUT%'=='4' GOTO R-ONE Official


CLS

ECHO ============INVALID INPUT============
ECHO -------------------------------------
ECHO Please select a number from the Main
echo Menu [1-4] or select 'Q' to quit.
ECHO -------------------------------------
ECHO ======PRESS ANY KEY TO CONTINUE======

PAUSE > NUL
GOTO MENU

:DNS and Network Reset
cls
netsh interface ip show config
ipconfig /all
ipconfig /registerdns
ipconfig /displaydns
ipconfig /release
ipconfig /extension
ipconfig /renew
ipconfig /flushdns
netsh int ip reset
netsh winsock reset
netsh interface ipv4 reset
netsh interface ipv6 reset
netsh int IP reset c:\resettcpip.txt
netsh advfirewall reset
nbtstat -r
nbtstat -rr
echo Processed Successfully! Restart your PC
pause
goto Menu

:Clean PC
cls
del /f /s /q %systemdrive%\*.tmp
del /f /s /q %systemdrive%\*._mp
del /f /s /q %systemdrive%\*.log
del /f /s /q %systemdrive%\*.gid
del /f /s /q %systemdrive%\*.chk
del /f /s /q %systemdrive%\*.old
del /f /s /q %systemdrive%\recycled\*.*
del /f /s /q %windir%\*.bak
del /f /s /q %windir%\prefetch\*.*
del /f /q %userprofile%\cookies\*.*
del /f /q %userprofile%\recent\*.*
del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.*"
del /f /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.*"
del /f /s /q "%userprofile%\Local Settings\Temp\*.*"
del /f /s /q "%userprofile%\recent\*.*"
rd /s /q %windir%\temp & md %windir%\tempdel /f /s /q %systemdrive%\*.tmp
del /q /f /s "%USERPROFILE%\AppData\Local\Temp\Excel8.0\*.exd”
del /q /f /s "%USERPROFILE%\AppData\Roaming\Microsoft\Office\*.tmp"
del /s /q C:\Windows\temp\*
del /f /s /q "%userprofile%\recent\*.*"
del /q /f /s "%USERPROFILE%\AppData\Local\Temp\*.*"
rd /s /q %windir%\temp & md %windir%\temp
del /q/f/s %TEMP%\*
del /q /s C:\Windows\temp*.*
del /q /s C:\Windows\Prefetch*.*
rd /s /q c:\windows\temp
md c:\windows\temp
del /s /f /q C:\WINDOWS\Prefetch
del /s /f /q %temp%\*.*
md %temp%
del c:\WIN386.SWP
Del /S /F /Q %Windir%\Temp
Del /S /F /Q %temp%
echo of |clip
rd /q /s c:\$Recycle.Bin
rd /q /s d:\$Recycle.Bin
del *.log /a /s /q /f
del /s /f /q C:\ProgramData\Tencent
del /s /f /q c:\Windows\Prefetch
del /s /f /q C:\aow_drv.log
deltree /y c:\windows\tempor~1
deltree /y c:\windows\temp
deltree /y c:\windows\tmp
deltree /y c:\windows\ff*.tmp
deltree /y c:\windows\history
deltree /y c:\windows\cookies
deltree /y c:\windows\recent
deltree /y c:\windows\spool\printers
CLEANMGR /sagerun:
echo Processed Successfully!
echo ------------------------------------------------------------------------
echo Please restart the PC
echo ------------------------------------------------------------------------
echo Now you are Safe. Thanks for Supporting to R乛One丨OFFICIAL
pause
goto Menu

:Kill All Emulator
cls
taskkill /F /IM Auxillary.exe
taskkill /F /IM TP3Helper.exe
taskkill /F /IM tp3helper.dat
TaskKill /F /IM androidemulator.exe
TaskKill /F /IM aow_exe.exe
TaskKill /F /IM QMEmulatorService.exe
TaskKill /F /IM RuntimeBroker.exe
taskkill /f /im adb.exe
taskkill /f /im GameLoader.exe
taskkill /f /im TBSWebRenderer.exe
taskkill /f /im AppMarket.exe
taskkill /f /im AndroidEmulator.exe
taskkill /f /im XD.vmp.exe
taskkill /t /f /im TitanService.exe
taskkill /t /f /im dnplayer.exe
taskkill /t /f /im dnmultiplayer.exe
taskkill /t /f /im ldnews.exe
taskkill /t /f /im LDPlayer.exe
taskkill /t /f /im dnconsole.exe
taskkill /t /f /im AppMarket.exe
taskkill /t /f /im AndroidEmulatorEn.exe
taskkill /t /f /im syzs_dl_svr.exe
taskkill /t /f /im TBSWebRenderer.exe
taskkill /t /f /im AndroidEmulatorEx.exe
taskkill /t /f /im AppMarket.exe
taskkill /t /im AndroidEmulatorEx.exe
taskkill /t /im AppMarket.exe
TaskKill /F /IM appmarket.exe

TaskKill /F /IM androidemulator.exe

TaskKill /F /IM aow_exe.exe

TaskKill /F /IM QMEmulatorService.exe

TaskKill /F /IM RuntimeBroker.exe

taskkill /f /im GameLoader.exe

taskkill /f /im TSettingCenter.exe

taskkill /f /im syzs_dl_svr.exe

net stop aow_drv
net stop Tensafe
net stop tesrsdt
net stop QMEmulatorService
net stop aow_drv
net stop Tensafe
pause 
goto Menu 



:R-ONE Official
cls
echo ------------------------------------------------
echo Join R-one Official Server
echo ------------------------------------------------
echo Thank you...
start " " "https://discord.gg/r-one"
start " " "https://discord.gg/r-one"
pause 
goto Menu

:Quit
CLS
ECHO ==============THANKYOU===============
ECHO -------------------------------------
ECHO ======PRESS ANY KEY TO CONTINUE======
PAUSE>NUL
EXIT