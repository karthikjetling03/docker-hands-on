# Use official Python image
FROM python:3.13.2-slim

# Set working directory inside the container
WORKDIR /app

# Copy only necessary files
COPY requirements.txt requirements.txt
COPY app.py app.py
COPY templates templates

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the Flask app's port
EXPOSE 5000

# Command to run the Flask app
CMD ["python", "app.py"]
