CREATE TABLE IF NOT EXISTS m_permissions (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) UNIQUE NOT NULL, -- 'create-price', 'delete-user'
  guard_name VARCHAR(50) DEFAULT 'api',
  created_at TIMESTAMP DEFAULT NOW()
);