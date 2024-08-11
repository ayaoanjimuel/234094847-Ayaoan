@echo off
setlocal enabledelayedexpansion

:menu
echo Available Commands:
echo 1. ipconfig
echo 2. tasklist
echo 3. taskkill
echo 4. chkdsk
echo 5. format
echo 6. defrag
echo 7. find
echo 8. attrib
set /p choice=Enter your command (1-8): 

if %choice%==1 goto ipconfig
if %choice%==2 goto tasklist
if %choice%==3 goto taskkill
if %choice%==4 goto chkdsk
if %choice%==5 goto format
if %choice%==6 goto defrag
if %choice%==7 goto find
if %choice%==8 goto attrib
goto menu

:ipconfig
ipconfig
goto end

:tasklist
tasklist
goto end

:taskkill
set /p pid=Enter the PID to kill: 
taskkill /PID %pid%
goto end

:chkdsk
set /p drive=Enter the drive letter to check (e.g., C:): 
chkdsk %drive%
goto end

:format
set /p drive=Enter the drive letter to format: 
format %drive%
goto end

:defrag
set /p drive=Enter the drive letter to defrag: 
defrag %drive%
goto end

:find
set /p text=Enter the text to find: 
set /p file=Enter the file to search in: 
find "%text%" %file%
goto end

:attrib
set /p file=Enter the file to modify attributes: 
set /p attribs=Enter the attributes (+ or - followed by attribute letters): 
attrib %attribs% %file%
goto end

:end
pause
