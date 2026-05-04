@echo off
REM Start Docker Deployment for DBMS Project

echo Building Docker images...
docker-compose build

echo.
echo Starting services...
docker-compose up -d

echo.
echo Waiting for database to be ready...
timeout /t 10

echo.
echo === Service Status ===
docker-compose ps

echo.
echo === Access Points ===
echo Frontend:              http://localhost:3000/index.html
echo Backend API:           http://localhost:8000
echo API Documentation:     http://localhost:8000/docs
echo PostgreSQL Database:   localhost:5432
echo.
echo View logs with:        docker-compose logs -f
echo Stop services with:    docker-compose down
echo.
pause
