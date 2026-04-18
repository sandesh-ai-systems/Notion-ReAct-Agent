FROM python:3.13-slim

WORKDIR /app


RUN apt-get update && apt-get install -y git && rm -rd /var/lib/apt/lists/*

RUN pip install uv

COPY pyproject.toml uv.lock ./
RUN uv sync --system

COPY . .

#Expose Port
EXPOSE 8000

CMD ["uvicorn", "api.server:app", "--host", "0.0.0.0", "--port", "8000"]