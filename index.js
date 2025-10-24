const express = require('express');
require('dotenv').config();
const swaggerDocs = require('./docs/swagger');

// routes
const authRoutes = require('./routes/authRoutes');
const userRoutes = require('./routes/userRoutes');
const vehicleRoutes = require('./routes/vehicleRoutes');
const serviceRoutes = require('./routes/serviceTypeRoutes');
const orderPriceRoutes = require('./routes/orderPriceRoutes');
const customerGuestRoutes = require('./routes/customerGuestRoutes');
const orderRoutes = require('./routes/orderRoutes');

const app = express();
const port = process.env.PORT || 3000;

app.use(express.json());

// routes
app.use('/auth', authRoutes);
app.use('/users', userRoutes);
app.use('/vehicle-types', vehicleRoutes);
app.use('/service-types', serviceRoutes);
app.use('/order-prices', orderPriceRoutes);
app.use('/customers-guest', customerGuestRoutes);
app.use('/orders', orderRoutes)

// root
app.get('/', (req, res) => res.send('Hello Express + Swagger + PostgreSQL + JWT'));

// swagger
swaggerDocs(app, port);

// start
app.listen(port, () => {
  console.log(`✅ Server running at http://localhost:${port}`);
});
