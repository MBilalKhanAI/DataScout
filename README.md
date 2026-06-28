# DataScout Enterprise Platform

> **AI-Powered Multi-Agent Data Analysis Platform**  
> Version 1.0.0 | Production Ready

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Python 3.11+](https://img.shields.io/badge/python-3.11+-blue.svg)](https://www.python.org/downloads/)
[![Next.js 14](https://img.shields.io/badge/Next.js-14-black)](https://nextjs.org/)
[![FastAPI](https://img.shields.io/badge/FastAPI-0.104+-green.svg)](https://fastapi.tiangolo.com/)

DataScout is an enterprise-grade AI platform that combines multiple specialized agents to provide intelligent data analysis, natural language SQL querying, document search, and dynamic visualization capabilities.

---

## 🌟 Key Features

### 🤖 **Multi-Agent Orchestration**
- **Supervisor Agent**: LangGraph-powered intelligent routing with GPT-4o
- **SQL Agent**: Natural language to SQL with audit logging
- **RAG Agent**: PDF document search with Pinecone vector database
- **Visualizer Agent**: Automatic chart generation from data

### 📊 **Dynamic Data Visualization**
- **4 Chart Types**: Bar, Line, Pie, Area
- **Automatic Chart Selection**: LLM-powered analysis
- **Interactive Recharts**: Real-time data rendering

### 🔐 **Enterprise Features**
- Real-time Analytics Dashboard
- Query History & Audit Logging
- User Settings Persistence
- Background PDF Processing
- Custom Agent Creation

---

## 🏗️ Project Repositories

This project consists of two independent microservices:

### [📦 Backend ](https://github.com/MBilalKhanAI/DataScout-backend)
FastAPI backend with LangGraph multi-agent system
- Supervisor, SQL, RAG, and Visualizer agents
- 15 API endpoints
- Pinecone vector database integration

**[View Backend Repository →](https://github.com/MBilalKhanAI/DataScout-backend)**

### [🎨 Frontend](https://github.com/MBilalKhanAI/DataScout-frontend)
Next.js 14 TypeScript frontend
- Real-time chat interface
- Analytics dashboard
- Dynamic visualizations

**[View Frontend Repository →](https://github.com/MBilalKhanAI/DataScout-frontend)**

---

## 🚀 Quick Start

### Prerequisites

- Python 3.11+
- Node.js 18+
- OpenAI API Key
- Pinecone API Key

### Installation

```bash
# Backend setup
git clone https://github.com/MBilalKhanAI/DataScout-backend.git
cd DataScout-backend
python -m venv venv && venv\\Scripts\\activate
pip install -r requirements.txt
cp .env.example .env  # Add your API keys
python init_db.py
uvicorn main:app --reload

# Frontend setup (new terminal)
git clone https://github.com/MBilalKhanAI/DataScout-frontend.git
cd DataScout-frontend
npm install
cp .env.example .env.local
npm run dev
```

**Access:** http://localhost:3000

---

## 📁 Project Structure

```
DataScout/
├── backend/                 # FastAPI Backend
│   ├── agents/             # AI Agent Implementations
│   │   ├── supervisor.py   # LangGraph Orchestrator
│   │   ├── rag_agent.py    # Document Search
│   │   ├── sql_agent.py    # SQL Query Agent
│   │   └── visualizer_agent.py  # Chart Generator
│   ├── services/           # Business Logic
│   │   └── ingestion.py    # PDF Processing
│   ├── tests/              # Test Suite
│   ├── main.py             # FastAPI Application
│   └── requirements.txt    # Python Dependencies
│
└── frontend/               # Next.js Frontend
    ├── src/
    │   ├── app/           # Pages & Routes
    │   ├── components/    # React Components
    │   └── lib/           # Utilities & API
    └── package.json       # Node Dependencies
```

---

## 🔧 Configuration

### Backend Environment Variables

Create `backend/.env`:

```env
# OpenAI Configuration
OPENAI_API_KEY=sk-proj-...

# Pinecone Configuration
PINECONE_API_KEY=pcsk_...
PINECONE_INDEX_NAME=datascout
PINECONE_HOST=https://datascout-xxxxx.svc.aped-4627-b74a.pinecone.io

# Optional: LangSmith Tracing
LANGCHAIN_TRACING_V2=true
LANGCHAIN_API_KEY=lsv2_pt_...
LANGCHAIN_PROJECT=datascout-enterprise
```

### Frontend Environment Variables

Create `frontend/.env.local`:

```env
NEXT_PUBLIC_API_URL=http://localhost:8000
```

---

## 📚 API Endpoints

### Core Endpoints

| Endpoint | Method | Description |
|----------|--------|-------------|
| `/chat` | POST | Main chat interface |
| `/api/analytics/summary` | GET | Real-time metrics |
| `/api/history` | GET | Query history |
| `/api/settings` | GET/POST | User preferences |
| `/api/documents/upload` | POST | PDF upload & ingestion |

See individual repositories for complete API documentation.

---

## 🏗️ Architecture

### Agent Workflow

```
User Query → Supervisor Agent
    ├─→ SQL Agent → Visualizer → Chart Response
    ├─→ RAG Agent → Text Response
    └─→ Clarify → Clarification Request
```

### Technology Stack

**Backend:**
- FastAPI - Modern Python web framework
- LangChain - LLM application framework
- LangGraph - Agent orchestration
- Pinecone - Vector database
- SQLite - Local database

**Frontend:**
- Next.js 14 - React framework
- TypeScript - Type safety
- Tailwind CSS - Styling
- Recharts - Data visualization
- Framer Motion - Animations

---

## 🧪 Testing

```bash
# Run backend tests
cd backend
python -m pytest tests/ -v

# Run specific test
python tests/test_supervisor.py
```

**Test Coverage:** 70%  
**Test Files:** 8 comprehensive test suites

---

## 📖 Documentation

- [Backend README](https://github.com/MBilalKhanAI/DataScout-backend#readme)
- [Frontend README](https://github.com/MBilalKhanAI/DataScout-frontend#readme)
- [Changelog](CHANGELOG.md)
- [Release Notes](RELEASE_NOTES.md)

---

## 🔒 Security

- ✅ Environment variable validation
- ✅ SQL injection prevention (parameterized queries)
- ✅ Table-level access control
- ✅ Audit logging for all queries
- ✅ API key rotation support

---

## 🚢 Deployment

### Backend
- Google Cloud Run
- Railway
- Render

### Frontend
- Vercel (recommended for Next.js)
- Netlify
- AWS Amplify

See individual repository READMEs for deployment guides.

---

## 📝 Release Notes

### Version 1.0.0 (January 2026)

**New Features:**
- ✅ Multi-agent orchestration with LangGraph
- ✅ Dynamic chart generation
- ✅ Real-time analytics dashboard
- ✅ Query history and audit logging
- ✅ Settings persistence

See [RELEASE_NOTES.md](RELEASE_NOTES.md) for complete details.

---

## 🤝 Contributing

We welcome contributions! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

---

## 📄 License

This project is licensed under the MIT License - see [LICENSE](LICENSE) file.

---

## 🙏 Acknowledgments

- OpenAI for GPT-4o
- Pinecone for vector database
- LangChain community
- Next.js team

---

## 📧 Contact

- **Email:** drmbilal172@gmail.com
- **GitHub:** [@MBilalKhanAI](https://github.com/MBilalKhanAI)
- **LinkedIn:** [Muhammad Bilal Khan](https://www.linkedin.com/in/muhammad-bilal-khan-885ai654)

---
