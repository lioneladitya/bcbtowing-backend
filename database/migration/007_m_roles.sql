CREATE TABLE IF NOT EXISTS m_roles (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) UNIQUE NOT NULL, -- 'admin', 'operator', 'finance'
  guard_name VARCHAR(50) DEFAULT 'web',
  created_at TIMESTAMP DEFAULT NOW()
);