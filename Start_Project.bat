@echo off
echo Starting the Intelligent OS Log Analysis System...
echo Please wait while all 4 parts of the engine turn on!

echo [1/4] Starting Frontend Dashboard...
start cmd /k "cd frontend && npm run dev"

echo [2/4] Starting Backend API...
start cmd /k "cd backend && py -m uvicorn main:app --reload"

echo [3/4] Starting Data Generator...
start cmd /k "cd backend && py log_generator.py"

echo [4/4] Starting ML Analyzer...
start cmd /k "cd backend && py ml_analyzer.py"

echo All engines are running!
echo Wait about 15 seconds for things to load, then open your browser to:
echo http://localhost:3000
echo.
pause
