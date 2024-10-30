# Start from the official Python image
FROM python:3.9-slim

# Install system dependencies, including 'ps'
RUN apt-get update && apt-get install -y \
    wget \
    curl \
    git \
    procps && \
    rm -rf /var/lib/apt/lists/*

# Install Python packages
RUN pip install --no-cache-dir \
    multiqc==1.14 \
    pandas==1.5.3 \
    numpy==1.24.3 \
    biopython==1.81 \
    matplotlib==3.7.1 \
    seaborn==0.12.2

# Create working directory
WORKDIR /app
