@echo off
echo Running Git Commands for Jamie Lackey Wiki Project...

:: Option menu
echo Choose an option:
echo 1. Quick status check (status, log, remote)
echo 2. Add, commit and push all changes
echo 3. Add specific file
echo 4. Update TODO list
echo 5. Show all branches
echo.

set /p choice="Enter option number (1-5): "

if "%choice%"=="1" (
    echo Checking status...
    git status
    echo.
    echo Checking log...
    git log --oneline
    echo.
    echo Checking remote...
    git remote -v
)

if "%choice%"=="2" (
    echo Adding all files...
    git add .
    git commit -m "Update project files %date%"
    git push origin main
    git status
)

if "%choice%"=="3" (
    set /p filename="Enter filename to add: "
    echo Adding %filename%...
    git add %filename%
    git commit -m "Add %filename%"
    git push origin main
    git status
)

if "%choice%"=="4" (
    echo Updating TODO.md...
    git add TODO.md
    git commit -m "Update TODO list %date%"
    git push origin main
    git status
)

if "%choice%"=="5" (
    echo Showing all branches...
    git branch -a
)

echo.
echo Done! Press any key to exit.
pause