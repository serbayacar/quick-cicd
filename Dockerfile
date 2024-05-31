# Use the official Python base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file to the container
COPY requirements.txt .

# Install the project dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the project files to the container
COPY . .

# Expose the port on which the Flask app will run
EXPOSE 8000

# Set the entrypoint command to run the Flask app
CMD ["python", "/app/src/main.py"]