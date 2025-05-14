# Washburn Marketplace

## Overview
Washburn Marketplace is a web-based platform built for students to buy and sell items on campus. Users can register with their Washburn ID and email, list items, chat, and safely trade with fellow students.

## Tech Stack
- **Frontend**: React, Vite, Tailwind CSS
- **Backend**: FastAPI, Uvicorn server
- **Database**: PostgreSQL(pgAdmin4)

## How to Run

1. Clone the repo
 git clone https://github.com/yourusername/Peer2PeerU.git
 cd Peer2PeerU

2. Set up the virtual environment and install dependencies:
   cd src
   yarn install
   (or if you use npm)
   npm install

3.Setup Python Virtual Environment
   cd backend
   python -m venv venv
   .\venv\Scripts\activate  # Windows
   # source venv/bin/activate  # macOS/Linux

4.Install backend dependencies

   pip install -r requirements.txt
  If requirements.txt doesn't exist yet, install manually:
   pip install fastapi uvicorn psycopg2-binary passlib[bcrypt] python-multipart
   pip freeze > requirements.txt

  Start the backend server
   cd backend
   uvicorn app.main:app --reload

  API will run at: http://localhost:8000
  Swagger UI: http://localhost:8000/docs

6.Start the frontend development server:
   cd src
   yarn run dev
     
   Frontend will be running at:
   http://localhost:5173


