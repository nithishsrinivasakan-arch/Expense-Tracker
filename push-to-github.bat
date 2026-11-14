@echo off
setlocal
echo ========================================================
echo  Push Rupee Expense Tracker to GitHub
echo ========================================================
echo.

where git >nul 2>nul
if %ERRORLEVEL% neq 0 (
    echo [ERROR] Git is not installed or not found in PATH.
    echo Please install Git for Windows from: https://git-scm.com/download/win
    echo Or upload the files directly via the GitHub website:
    echo   https://github.com/nithishsrinivasakan-arch/Expense-Tracker
    echo.
    pause
    exit /b 1
)

echo [1/5] Initializing Git repository...
git init

echo [2/5] Adding all project files...
git add .

echo [3/5] Creating commit...
git commit -m "Initial commit: Rupee Expense Tracker PWA"

echo [4/5] Setting main branch and remote origin...
git branch -M main
git remote remove origin >nul 2>nul
git remote add origin https://github.com/nithishsrinivasakan-arch/Expense-Tracker.git

echo [5/5] Pushing to GitHub (you may be prompted to authenticate in your browser)...
git push -u origin main

if %ERRORLEVEL% equ 0 (
    echo.
    echo ========================================================
    echo  SUCCESS! Code pushed to GitHub repository:
    echo  https://github.com/nithishsrinivasakan-arch/Expense-Tracker
    echo ========================================================
) else (
    echo.
    echo [NOTE] If push was denied or required login, please check your GitHub
    echo credentials or upload the files directly via the GitHub web interface.
)

pause
