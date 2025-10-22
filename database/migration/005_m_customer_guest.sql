CREATE TABLE IF NOT EXISTS m_customer_guest (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    email VARCHAR(100),
    address TEXT,
    note TEXT,
    pickup_date DATE,
    created_at TIMESTAMP DEFAULT NOW()
);
