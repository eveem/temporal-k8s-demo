FROM python:3.10-slim

WORKDIR /

RUN apt-get update && apt-get install -y \
    libpq-dev \
    gcc \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY temporal-demo.py .

CMD ["python", "./temporal-demo.py"]
