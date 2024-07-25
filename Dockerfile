# Use an official base image, e.g., Python
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the application code and requirements file
COPY requirements.txt /app/
COPY . /app/

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port the app runs on
EXPOSE 8000

# Define the command to run the application
CMD ["python", "app.py"]

