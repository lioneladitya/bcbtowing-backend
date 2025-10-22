CREATE TABLE IF NOT EXISTS t_order (
    id SERIAL PRIMARY KEY,
    customer_guest_id INT REFERENCES m_customer_guest(id) ON DELETE CASCADE,
    order_price_id INT REFERENCES t_order_price(id) ON DELETE SET NULL,
    origin VARCHAR(100) NOT NULL,
    destination VARCHAR(100) NOT NULL,
    vehicle_type_id INT REFERENCES m_vehicle_type(id) ON DELETE SET NULL,
    service_type_id INT REFERENCES m_service_type(id) ON DELETE SET NULL,
    insurance_option VARCHAR(50),
    vehicle_price NUMERIC(15,2),
    estimated_price NUMERIC(15,2),
    status SMALLINT DEFAULT 0, -- 0=pending, 1=confirmed, 2=done
    created_at TIMESTAMP DEFAULT NOW()
);
