FROM python:3.13-slim

WORKDIR /app

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

# Install dependencies
COPY pyproject.toml ./
RUN pip install .

# Copy code
COPY . .

# Expose port
EXPOSE 8000

# Run app
CMD ["python", "-m", "uvicorn", "api.server:app", "--host", "0.0.0.0", "--port", "8000"]