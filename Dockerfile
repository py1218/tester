FROM python:3.10-slim

WORKDIR /

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copy your handler file
COPY test_hf.py /

# Start the container
CMD ["python3", "-u", "test_hf.py"]
