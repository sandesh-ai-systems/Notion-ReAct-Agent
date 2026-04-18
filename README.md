# 🤖 Notion ReAct Planner Agent

An AI-powered planner agent that integrates with Notion to manage notes, calendar events, and external tools like weather APIs using a ReAct (Reason + Act) architecture.

---

## 🚀 Features

* 🧠 ReAct-based AI Agent (LangChain)
* 📝 Manage Notion Notes (Add / Fetch)
* 📅 Manage Calendar Events (Add / Fetch)
* 🌦️ Weather Integration
* ⚡ FastAPI backend for API access
* 🐳 Dockerized for deployment
* 🔁 CI/CD with GitHub Actions
* ☁️ Deployed on AWS EC2

---

## 🏗️ Architecture

![Architecture](Notion%20ReAct%20Agent%20Architecture.png)


## ⚙️ Setup (Local Development)

### 1️⃣ Clone the repo

```bash
git clone https://github.com/<your-username>/Notion-ReAct-Agent.git
cd Notion-ReAct-Agent
```

---

### 2️⃣ Create `.env` file

```env
GROQ_API_KEY=your_key
NOTION_API_KEY=your_key
NOTION_NOTES_DB_ID=your_db_id
NOTION_CALENDAR_DB_ID=your_db_id
```

---

### 3️⃣ Install dependencies

```bash
pip install .
```

---

### 4️⃣ Run FastAPI server

```bash
uvicorn api.server:app --host 0.0.0.0 --port 8000
```

---

### 5️⃣ Test API

```bash
http://localhost:8000/health
```

---

## 🐳 Docker Setup

### Build Image

```bash
docker build -t react-agent .
```

### Run Container

```bash
docker run -d \
  --name react_agent_container \
  -p 8000:8000 \
  --env-file .env \
  react-agent
```

---

## 🔁 CI/CD Pipeline

This project uses **GitHub Actions** to:

1. Build Docker image
2. Push to GitHub Container Registry (GHCR)
3. Deploy to AWS EC2 via SSH
4. Run container with environment variables

---


## 🧠 How It Works

* User query → Agent (LangChain)
* Agent decides:

  * Call Notion tool
  * Call Weather tool
  * Respond directly
* Tools interact with external APIs
* Response returned via FastAPI

---


## 👨‍💻 Author

**Sandesh**

---

## ⭐ If you like this project

Give it a ⭐ on GitHub!
