# Use a base image with PyTorch and MONAI pre-installed
FROM pytorch/pytorch:latest

# Set the working directory in the container
WORKDIR /app

# Copy your project files into the container
COPY src /app/src
RUN chmod -R 777 /app/src/ \
&& chmod -R 777 /workspace/

# Install dependencies from requirements.txt
COPY requirements.txt /app/
RUN pip install -r /app/requirements.txt -v

# Specify the command to run when the container starts
# CMD ["python", "/app/src/codes/inference.py"]
# RUN chmod 666 /workspace/fetal-bet/*
