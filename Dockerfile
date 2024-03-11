# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip3 install --no-cache-dir -r requirements.txt

#make sure you expose your actual  app port 
EXPOSE 8000

# Run app.py when the container launches
CMD ["python3", "app.py"]