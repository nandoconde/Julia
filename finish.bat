:: This batchfile shuts down the environment after a day's work
:: Header
@echo off
echo.
echo -----------------------------------------------
echo                SYNC JULIA
echo -----------------------------------------------
echo.
echo.

:: Wait until files are saved
:savePoint
echo --------------STEP 1: SAVE FILES---------------
echo Save all files (Ctrl + S)
echo Are all files saved?
echo [Y/y = yes] 
set /p savedFiles= ""
echo.
echo.
if %savedFiles%==y goto :sync1
if %savedFiles%==Y goto :sync1
goto :savePoint


:: Julia repo syncing
:sync1
echo --------------STEP 2: GIT REPO-----------------
echo Do you want to stage, commit and push Julia?
echo [N/n = no, else yes] 
set /p Julie= ""
if %Julie%==n goto :salidaA
if %Julie%==N goto :salidaA
echo.
echo Enter commit message for Julia:
set /p Julie= ""
set Julie="%Julie%"
git stage -A
git commit -v -a -m %Julie%
git push
echo.
exit 0

:: No synchronization
:salidaA
echo "Aborting Julia syncing"
echo.
echo -----------------------------------------------
echo -----------------------------------------------
echo.
exit 0