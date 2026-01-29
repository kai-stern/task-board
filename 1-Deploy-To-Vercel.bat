@echo off
REM ================================================
REM QUICK DEPLOY - Task Board to Vercel
REM Run this when you arrive at the computer!
REM ================================================

echo.
echo 🚀 TASK BOARD DEPLOYMENT
echo =========================
echo.

REM Go to task-board folder
cd /d "%~dp0"

REM Show what's about to happen
echo 📦 Files ready:
dir /b *.html *.bat *.md 2>nul | findstr /i "\.html \.bat \.md"
echo.

REM Check if vercel is installed
where vercel >nul 2>&1
if errorlevel 1 (
    echo 📦 Installing Vercel CLI...
    npm install -g vercel
)

REM Deploy!
echo 🚀 Deploying to Vercel...
echo.
npx vercel --prod --yes

echo.
echo ============================================
echo ✅ TASK BOARD IS LIVE!
echo ============================================
echo.
echo 📋 Next steps:
echo 1. Copy the URL from above
echo 2. Share it with Kai
echo 3. Start using the task board!
echo.
echo 💡 Tip: Run this again anytime to redeploy
echo.

pause
