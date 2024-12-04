FROM python:3.11

WORKDIR /data

# Install required system dependencies
RUN apt-get update && apt-get install -y python3-distutils

# Install Python dependencies
RUN pip install django==3.2

# Copy project files into the container
COPY . .

# Run Django migrations
RUN python manage.py migrate

