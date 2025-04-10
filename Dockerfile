# --- Stage 1: Base Image to build dependencies ---
FROM python:3.10-slim AS builder

WORKDIR /app

COPY requirements.txt .
RUN pip install --upgrade pip && \
    pip install --user -r requirements.txt

# --- Stage 2: Final lightweight image ---
FROM python:3.10-alpine

WORKDIR /app

COPY --from=builder /root/.local /root/.local
COPY app/ ./app

ENV PATH=/root/.local/bin:$PATH

EXPOSE 5000

CMD ["python", "app/app.py"]
