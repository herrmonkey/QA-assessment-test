# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the requirements and test script into the container
COPY requirements.txt .
COPY test_google_search.py .

# Install required Python packages
RUN pip install --no-cache-dir -r requirements.txt

# Command to run the tests
CMD ["pytest", "test_google_search.py"]