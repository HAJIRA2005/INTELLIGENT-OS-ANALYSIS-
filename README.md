# Intelligent OS Log Analysis and Prediction
**A Full-Stack Machine Learning & DBMS Showcase**

## 🎯 Project Overview
This project simulates real-time OS logging and analyzes it dynamically to find hidden system anomalies (like CPU spikes or memory leaks) using Machine Learning logic instead of static rules.

## 🧠 Key Technologies Used To Highlight:
1. **Machine Learning (Scikit-Learn)**
   - **Isolation Forest Algorithm:** Dynamically flags unusual spikes in system utilization without needing pre-labeled data.
   - **Linear Regression:** Forecasts future CPU usage over a 5-minute rolling window based on past logs.
2. **Database Management System (SQLite + SQLAlchemy)**
   - Used robust Object Relational Mapping (ORM) instead of raw SQL queries for a scalable and secure backend architecture. Data streams from the generator straight into our Relational schemas.
3. **Backend API (Python FastAPI)**
   - Serves as the high-speed bridge distributing anomaly alerts natively to the web client.
4. **Frontend Architecture (React + Vite)**
   - A highly reactive, state-driven dashboard simulating professional SIEM (Security Information and Event Management) platforms. 

## 🎤 Presentation Talking Points (For your Teacher)
- *"Instead of using basic IF/ELSE statements to catch CPU overload, I implemented **Isolation Forest**, an unsupervised ML algorithm, to dynamically cluster normal metrics and find outliers."*
- *"I used a multi-threaded microservice architecture. The python log generator feeds data directly into the **DBMS**, while entirely separately, the ML analyzer monitors that database and flags anomalies in real time."*
- *"For the UI, I designed a **React-based Dashboard** incorporating Chart.js so you can view all data changes, spikes, and ML classifications the second they are injected into the database."*
