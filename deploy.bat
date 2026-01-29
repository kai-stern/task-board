@echo off
REM 🚀 Deploy Task Board Script
REM Run this to deploy to GitHub + Vercel

echo "🔧 Deploying Task Board..."

REM Create GitHub repo and push
echo "📦 Creating GitHub repo..."
npx gh repo create task-board --public --source=. --push 2>nul || (
    echo "Repo might exist, pushing to existing remote..."
    git remote add origin https://github.com/omerb/task-board.git 2>nul
    git branch -M main
    git push -u origin main
)

REM Deploy to Vercel
echo "🚀 Deploying to Vercel..."
npx vercel --prod --yes

echo "✅ Done! Your site should be live at:"
echo "   https://task-board.vercel.app"
