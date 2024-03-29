# Use an official Python runtime as a parent image
FROM python:3.10-slim

# Set environment variables for Python (recommended but optional)
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container at /app
COPY requirements.txt /app/

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the current directory contents into the container at /app
COPY . /app/

# Collect static files (if needed)
RUN python manage.py collectstatic --noinput

# Run migrations (if needed)
RUN python manage.py migrate

# Make port 8000 available to the world outside this container
EXPOSE 8000

# Define the command to run your server (use gunicorn or uWSGI for production)
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
