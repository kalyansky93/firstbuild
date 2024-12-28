# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy requirements.txt into the container
COPY requirements.txt /app/

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 8080 available to the world outside the container
EXPOSE 8080

# Define environment variable
ENV PYTHONUNBUFFERED=1

# Run the application
CMD ["python", "app.py"]
