const express = require('express');
require('dotenv').config();
const swaggerDocs = require('./swagger');

// routes
const authRoutes = require('./routes/authRoutes');
const userRoutes = require('./routes/userRoutes');

const app = express();
const port = process.env.PORT || 3000;

app.use(express.json());

// routes
app.use('/auth', authRoutes);
app.use('/users', userRoutes);

// root
app.get('/', (req, res) => res.send('Hello Express + Swagger + PostgreSQL + JWT'));

// swagger
swaggerDocs(app, port);

// start
app.listen(port, () => {
  console.log(`✅ Server running at http://localhost:${port}`);
});
