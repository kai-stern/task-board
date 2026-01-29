@echo off
set GH_TOKEN=

echo Creating GitHub repo...
curl -X POST -H "Authorization: token %GH_TOKEN%" -d "{\"name\":\"task-board\",\"description\":\"Kai & Omer Task Board - 24\\/7 AI Partner\",\"private\":false}" https://api.github.com/user/repos

echo.
echo Pushing code...
git remote add origin https://x-access-token:%GH_TOKEN%@github.com/kai-stern/task-board.git
git branch -M main
git push -u origin main

echo.
echo Done! Repo created at: https://github.com/kai-stern/task-board
