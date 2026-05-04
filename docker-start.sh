#!/bin/bash

# Build Docker images
echo "Building Docker images..."
docker-compose build

# Start services
echo "Starting services..."
docker-compose up -d

# Wait for database to be ready
echo "Waiting for database to be ready..."
sleep 10

# Display service status
echo ""
echo "=== Service Status ==="
docker-compose ps

echo ""
echo "=== Access Points ==="
echo "Frontend: http://localhost:3000/index.html"
echo "Backend API: http://localhost:8000"
echo "API Documentation: http://localhost:8000/docs"
echo ""
echo "View logs with: docker-compose logs -f"
echo "Stop services with: docker-compose down"
