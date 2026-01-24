@echo off
echo Starting DataScout Enterprise Platform...

start "DataScout Backend" cmd /k "cd backend && venv\Scripts\python main.py"
start "DataScout Frontend" cmd /k "cd frontend && npm run dev"

echo Services started. Backend on port 8000, Frontend on port 3000.
pause
