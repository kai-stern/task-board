@echo off
echo ===========================================
echo 🚀 DEPLOY TASK BOARD - ONE CLICK!
echo ===========================================
echo.
echo This will:
echo 1. Create GitHub repo (first time only)
echo 2. Push code
echo 3. Deploy to Vercel
echo.
echo Press any key to continue...
pause >nul

REM Run the quick deploy
call QUICK-DEPLOY.bat

echo.
echo ===========================================
echo ✅ DONE! Check your Vercel URL!
echo ===========================================
pause
