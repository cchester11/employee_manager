const express = require('express');
const mysql = require('mysql2');

const PORT = process.env.PORT || 7543;
const app = express();

// Middleware
app.use(express.urlencoded({ extended: false }))
app.use(express.json())

// connect to the database
const database = mysql.createConnection(
  {
  host: 'localhost',
  user: 'root',
  database: 'employee_manager_db'
  },
  console.log('Connected to the database')
);

// get and post routes with db query functionality
app.get('/api/employeeManager', (req, res) => {
  res.json({
    message: 'connected',
  })
})

app.post('/api/employeeManager', (req, res) => {
  res.json({
    message: 'success'
  })
})

// Default for error in request
app.use((req, res) => {
    res.status(404).end();
});

// Server ago
app.listen(PORT, () => {
  console.log(`Server listening on ${PORT}`)
});