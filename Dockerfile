FROM python:3.10-slim

WORKDIR /

# Install dependencies
RUN pip install --no-cache-dir runpod

# Copy your handler file
COPY test_hf.py /

# Start the container
CMD ["python3", "-u", "test_hf.py"]