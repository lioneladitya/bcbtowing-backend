-- =============================================
-- Table: t_order_price
-- Menyimpan konfigurasi harga dinamis
-- =============================================

CREATE TABLE IF NOT EXISTS t_order_price (
    id SERIAL PRIMARY KEY,
    origin VARCHAR(100) NOT NULL,
    destination VARCHAR(100) NOT NULL,
    vehicle_type_id INT REFERENCES m_vehicle_type(id) ON DELETE SET NULL,
    service_type_id INT REFERENCES m_service_type(id) ON DELETE SET NULL,
    insurance_option VARCHAR(50) DEFAULT 'Tanpa Asuransi',
    base_price NUMERIC(15,2) NOT NULL,      -- harga dasar
    insurance_rate NUMERIC(5,4) DEFAULT 0.01, -- 1% dari harga kendaraan
    is_active BOOLEAN DEFAULT TRUE,
    ADD COLUMN effective_date DATE DEFAULT NOW(),
    created_at TIMESTAMP DEFAULT NOW()
);
