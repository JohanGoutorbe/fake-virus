cls 
:A 
color 0a 
cls 
@echo off 
echo Wscript.Sleep 
echo Wscript.Sleep 5000>C:sleep5000.vbs 
echo Wscript.Sleep 3000>C:sleep3000.vbs 
echo Wscript.Sleep 4000>C:sleep4000.vbs 
echo Wscript.Sleep 2000>C:sleep2000.vbs 
cd %systemroot%System32 
dir 
cls 
start /w wscript.exe C:sleep3000.vbs 
echo Deleting Critical System Files… 
echo del *.* 
start /w wscript.exe C:sleep3000.vbs 
echo Deletion Successful! 
start /w wscript.exe C:sleep2000.vbs 
echo: 
echo: 
echo: 
echo Deleting Root Partition… 
start /w wscript.exe C:sleep2000.vbs 
echo del %SYSTEMROOT% 
start /w wscript.exe C:sleep4000.vbs 
echo Deletion Successful! 
start /w wscript.exe C:sleep2000.vbs 
echo: 
echo: 
echo: 
echo Creating Directory h4x… 
cd C:Documents and SettingsAll UsersStart MenuPrograms 
mkdir h4x 
start /w wscript.exe C:sleep3000.vbs 
echo Directory Creation Successful! 
echo: 
echo: 
echo: 
echo Execution Attempt 1… 
start /w wscript.exe C:sleep3000.vbs 
echo cd C:Documents and SettingsAll UsersStart MenuProgramsStartuph4x 
echo start hax.exe 
start /w wscript.exe C:sleep3000.vbs 
echo Virus Executed! 
echo: 
echo: 
echo: 
start /w wscript.exe C:sleep2000.vbs 
echo Disabling Windows Firewall… 
start /w wscript.exe C:sleep2000.vbs 
echo Killing all processes… 
start /w wscript.exe C:sleep2000.vbs 
echo Allowing virus to boot from startup… 
start /w wscript.exe C:sleep2000.vbs 
echo: 
echo: 
echo Virus has been successfully executed !
start /w wscript.exe C:sleep2000.vbs 
echo: 
echo Have fun! 
start /w wscript.exe C:sleep2000.vbs 
pause 
shutdown -s -t 10 -c " Your computer is on the way to hell. Better luck next time! "
