# Docker Deployment Guide

## Prerequisites
- Docker Desktop installed and running
- Git (to clone the repository)

## Quick Start

### 1. Navigate to the project directory
```bash
cd "path\to\dbms project"
```

### 2. Build and start all services
```bash
docker-compose up --build
```

This command will:
- Build backend and frontend images
- Start PostgreSQL database
- Start the backend API (port 8000)
- Start the log generator
- Start the ML analyzer
- Start the frontend (port 3000)

### 3. Access the application
- **Frontend Dashboard**: http://localhost:3000/index.html
- **Backend API**: http://localhost:8000/
- **API Docs**: http://localhost:8000/docs

## Services

### Database (PostgreSQL)
- Port: 5432 (internal)
- User: `dbms_user`
- Password: `dbms_password`
- Database: `os_logs`

### Backend API
- Port: 8000
- Service: FastAPI with auto-reload enabled
- Endpoints:
  - `GET /api/logs` - Get system logs
  - `GET /api/anomalies` - Get detected anomalies
  - `GET /api/predictions` - Get CPU predictions

### Log Generator
- Generates simulated OS logs continuously
- Writes to PostgreSQL database

### ML Analyzer
- Analyzes logs for anomalies using Isolation Forest
- Predicts future CPU usage with Linear Regression
- Stores results in PostgreSQL database

### Frontend
- React + Vite dashboard
- Real-time data visualization with Chart.js
- Port: 3000

## Common Commands

### View logs
```bash
docker-compose logs -f backend
docker-compose logs -f frontend
docker-compose logs -f log_generator
docker-compose logs -f ml_analyzer
```

### Stop all services
```bash
docker-compose down
```

### Stop and remove database volume
```bash
docker-compose down -v
```

### Rebuild without cache
```bash
docker-compose build --no-cache
```

### Restart a specific service
```bash
docker-compose restart backend
```

## Troubleshooting

### Port already in use
If port 8000 or 3000 is already in use, modify `docker-compose.yml`:
```yaml
ports:
  - "8001:8000"  # Change 8001 to your desired port
```

### Database connection issues
Ensure PostgreSQL container is healthy:
```bash
docker-compose ps
```

All services should show "healthy" or "up" status.

### Clear database and restart
```bash
docker-compose down -v
docker-compose up --build
```

## Performance Notes

- The application uses PostgreSQL for better concurrent access compared to SQLite
- All Python services have auto-reload enabled for development
- Frontend hot-reload is enabled for rapid development
- Database volume persists data even after containers stop

## Production Deployment

For production:
1. Remove `--reload` flag from backend command
2. Use environment variables for sensitive data
3. Add proper logging and monitoring
4. Use a proper web server (nginx) as reverse proxy
5. Enable HTTPS with proper SSL certificates
