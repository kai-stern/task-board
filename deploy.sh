#!/bin/bash
# 🚀 Deploy Task Board to GitHub + Vercel

set -e

echo "🔧 Deploying Task Board..."
echo ""

# 1. Create GitHub repo
echo "📦 Step 1/3: Creating GitHub repository..."
gh repo create task-board --public --description "Kai & Omer Task Board - 24/7 AI Partner" --source=. --push

echo ""
echo "🚀 Step 2/3: Deploying to Vercel..."
npx vercel --prod --yes

echo ""
echo "✅ DONE!"
echo "🌐 Your task board is now live at:"
echo "   https://task-board.vercel.app"
