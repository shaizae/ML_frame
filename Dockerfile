# Use Ubuntu as base image
FROM ubuntu:latest

#expose port
EXPOSE 8000

# Install system dependencies
RUN apt-get update
RUN apt-get install -y python3 python3-venv


# Set up the working directory
WORKDIR /ML_frame

# Create a virtual environment
RUN python3 -m venv env

# Activate the virtual environment
ENV PATH="/ML_frame/env/bin:$PATH"

# Copy and install Python dependencies
COPY requirements.txt /ML_frame/
RUN /ML_frame/env/bin/pip install --no-cache-dir -r requirements.txt

# Copy the rest of your application code
COPY . /ML_frame/

ENTRYPOINT ["python3"]

# Command to run your application
CMD [ "main.py"]