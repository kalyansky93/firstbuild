# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the application files to the container
COPY . /app/

# Install required packages directly (instead of from requirements.txt)
RUN pip install --no-cache-dir flask

# Make port 8080 available to the world outside the container
EXPOSE 8081

# Define environment variable
ENV PYTHONUNBUFFERED=1

# Run the application
CMD ["python", "app.py"]
