# Use the official Python image from the Docker Hub
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt requirements.txt

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

# Set environment variable for version (optional)
ARG VERSION=1.0.0
ENV APP_VERSION=$VERSION

# Specify the command to run the application
CMD ["python", "app.py"]
