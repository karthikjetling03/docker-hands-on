# 🌙 Flask Dark Mode Toggle Web App ☀️

This is a simple Flask web application that provides a dark mode toggle feature.  

## ✨ Features
- 🌗 Light/Dark mode toggle  
- 🐳 Dockerized for easy deployment  

## 📌 Prerequisites  
- 🐍 Python 3.13.2  
- ⚡ Flask  
- 📦 Docker  

## 🚀 Installation  

### 1. Clone the Repository
```sh
git clone https://github.com/karthikjetling03/docker-hands-on.git
cd docker-hands-on
```

### 2. Create a Virtual Environment (Optional but Recommended)
```sh
python -m venv venv
source venv/bin/activate  # On Windows use `venv\Scripts\activate`
```

### 3. Install Dependencies
```sh
pip install -r requirements.txt
```

### 4. Run the Flask Application
```sh
python app.py
```

The app should be available at `http://127.0.0.1:5000/`

## Running with Docker

### 1. Build the Docker Image
```sh
docker build -t flask-darkmode .
```

### 2. Run the Docker Container
```sh
docker run -p 5000:5000 flask-darkmode
```

The app should now be accessible at `http://localhost:5000/`

## Folder Structure
```
flask-darkmode/
│── app.py
│── templates/
│   ├── index.html
│── Dockerfile
│── requirements.txt
│── README.md
```

## Dockerfile Example
```dockerfile
FROM python:3.13.2-slim
WORKDIR /app
COPY requirements.txt requirements.txt
COPY app.py app.py
COPY templates templates
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 5000
CMD ["python", "app.py"]
```
