# Use the official Python image from the Docker Hub
# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install the required packages
RUN pip install --no-cache-dir -r requirements.txt

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Define the environment variable
ENV FLASK_APP=app.py

# Run the command to start the Flask application
CMD ["flask", "run", "--host=0.0.0.0"]

