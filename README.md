# 📘 Book Sphere (React, Express, MySQL)

A modern **full-stack web application** to manage books and authors, built using **React.js**, **Express.js**, and **MySQL**.

---

## 🚀 Features

- 📚 Add, view, update, and delete books  
- ✍️ Manage authors  
- 📊 Dashboard overview  
- 🔗 RESTful API integration  

---

## 🏗️ Architecture

- **Frontend (Presentation Layer):** React.js  
- **Backend (Application Layer):** Express.js  
- **Database (Data Layer):** MySQL  

---

## 🛠️ Tech Stack

- React.js  
- Node.js  
- Express.js  
- MySQL  
- Git  

---

## ⚙️ Prerequisites

- Node.js (LTS)
- MySQL
- Git

---

## 🗄️ Database Setup

```bash
mysql -u root -p
```

```sql
CREATE DATABASE bookdb;
```

```bash
mysql -u root -p bookdb < backend/db.sql
```

---

## ⚙️ Backend Setup

```bash
cd backend
npm install
npm start
```

Backend runs at:
```
http://localhost:3200
```

---

## 💻 Frontend Setup

```bash
cd frontend
npm install
npm run dev
```

Frontend runs at:
```
http://localhost:5173
```

---

## 🔗 API Endpoints

### Books
```
GET    /api/books
POST   /api/books
PUT    /api/books/:id
DELETE /api/books/:id
```

### Authors
```
GET    /api/authors
POST   /api/authors
PUT    /api/authors/:id
DELETE /api/authors/:id
```

---

## 🧪 How to Run

1. Start MySQL  
2. Run backend (`npm start`)  
3. Run frontend (`npm run dev`)  
4. Open browser: http://localhost:5173  

---

## 📌 Highlights

- 3-tier architecture implementation  
- Clean folder structure  
- RESTful APIs  
- Full CRUD functionality  

---

## 📈 Future Improvements

- Authentication (JWT)  
- Deployment  
- Responsive UI  
- Advanced dashboard  

---

## 📜 License

MIT License

---