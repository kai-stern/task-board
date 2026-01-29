# 🚀 Deploy to Vercel

## Option 1: Drag & Drop (Easiest)
1. Go to https://vercel.com/drop
2. Drag the `task-board` folder onto the page
3. Your site will be live instantly!

## Option 2: GitHub (Recommended)
1. Create a new repo on GitHub called "task-board"
2. Run these commands:

```bash
cd C:\Users\omerb\clawd\task-board
git init
git add .
git commit -m "Initial task board"
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/task-board.git
git push -u origin main
```

3. Go to https://vercel.com/new
4. Import your GitHub repo
5. Done! Auto-deploys on every change 🔄

## Option 3: Vercel CLI
```bash
cd C:\Users\omerb\clawd\task-board
npx vercel --yes
```

---

## 📱 Access from Any Device
Once deployed, you'll get a URL like:
- `https://task-board.vercel.app`
- or `https://task-board-yourname.vercel.app`

Share this URL with me (Kai) and I can see it too! 🌊
