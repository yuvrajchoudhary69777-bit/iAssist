# iAssist 🚀

iAssist is a modern, full-stack AI-powered application designed for real-time object detection and intelligent video stream processing.

## 🛠️ Tech Stack

* **Frontend:** Next.js, React, Tailwind CSS
* **Backend:** Python, Flask, Gunicorn
* **AI / Computer Vision:** YOLO, OpenCV (headless), PyTorch
* **Deployment:** Docker, Hugging Face Spaces, GitHub

## 📂 Project Structure

```text
iAssist/
├── backend/            # Flask & YOLO backend server
│   ├── server.py       # Main API application
│   ├── Dockerfile      # Container configuration for cloud deployment
│   └── requirements.txt# Python dependencies
├── frontend/           # Next.js client application
└── README.md

⚙️ Getting Started Locally
1. Clone the Repository
Bash
git clone [https://github.com/yuvrajchoudhary69777-bit/iAssist.git](https://github.com/yuvrajchoudhary69777-bit/iAssist.git)
cd iAssist


2. Run the Backend
Bash
cd backend
pip install -r requirements.txt
python server.py


3. Run the Frontend
Bash
cd frontend
npm install
npm run dev

Deployment
The backend is containerized using Docker and deployed on Hugging Face Spaces.

The frontend connects securely to the cloud backend via environment variables.

