# Use an official Python runtime as a parent image
FROM python:3.8

# Set the working directory in the container
WORKDIR /usr/src/app

# Install any needed packages specified in requirements.txt
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Download and install ChromeDriver
RUN apt-get update && apt-get install -y \
    chromium \
    chromium-driver \
 && rm -rf /var/lib/apt/lists/*

# Set the display port to avoid crash
ENV DISPLAY=:99

# Expose the default Selenium Hub port
EXPOSE 4444

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Command to run your SeleniumBase tests
CMD ["pytest", "test_google_search.py"]