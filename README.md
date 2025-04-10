# docker-flask-app

# 📦 Dockerized Flask App

This is a basic Python Flask application fully containerized using Docker.

### 🛠️ Features
- Lightweight Flask application
- Multi-stage Docker build for smaller image size
- Exposes app over container network on port 5000
- Portable and ready for container orchestration tools

### 🔧 How to Run

```bash
docker build -t docker-flask-app .
docker run -d -p 5000:5000 docker-flask-app

## 🌐 Access
Visit: http://localhost:5000
