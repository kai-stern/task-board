@echo off
REM ================================================
REM Task Board Deployment Script
REM Run this to deploy to Vercel
REM ================================================

echo.
echo 🚀 TASK BOARD DEPLOYMENT
echo =========================
echo.

REM Check Node.js
node --version >nul 2>&1
if errorlevel 1 (
    echo ❌ Node.js not found!
    pause
    exit /b 1
)
echo ✅ Node.js found

REM Check if in right directory
if exist "index.html" (
    echo ✅ Found index.html
) else (
    echo ❌ index.html not found!
    echo Make sure you're in the task-board folder
    pause
    exit /b 1
)

REM Show current status
echo.
echo 📦 Current status:
git status --short 2>nul
echo.

REM Deployment options
echo 1. Deploy to Vercel (production)
echo 2. Deploy preview (staging)
echo 3. Just check status
echo.

set /p choice="Choose (1/2/3): "

if "%choice%"=="1" (
    echo.
    echo 🚀 Deploying to production...
    npx vercel --prod --yes
    echo.
    echo ✅ Deployed! Check the URL above.
) else if "%choice%"=="2" (
    echo.
    echo 🚀 Deploying preview...
    npx vercel
    echo.
    echo ✅ Preview deployed! Check the URL above.
) else if "%choice%"=="3" (
    echo.
    echo 📊 Status:
    git status
    echo.
)

echo.
pause
