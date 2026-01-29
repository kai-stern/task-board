@echo off
REM 🚀 Quick Deploy - Task Board
REM ==========================================
REM Run this script to deploy your task board!
REM ==========================================

echo.
echo 🔧 TASK BOARD DEPLOYMENT
echo =========================
echo.

REM Check if gh is installed
where gh >nul 2>&1
if errorlevel 1 (
    echo ❌ GitHub CLI not found. Installing...
    winget install GitHub.cli
)

REM Check if vercel is installed
where vercel >nul 2>&1
if errorlevel 1 (
    echo ❌ Vercel CLI not found. Installing...
    npm i -g vercel
)

echo.
echo 📦 Creating GitHub repository...
echo    (This will open a browser for auth if needed)
echo.

gh repo create task-board --public --description "Kai & Omer Task Board - 24/7 AI Partner" --source=. --push

echo.
echo 🚀 Deploying to Vercel...
echo.

npx vercel --prod --yes

echo.
echo =========================================
echo ✅ SUCCESS! Your task board is live!
echo 🌐 Check your Vercel URL above
echo =========================================
echo.
pause
