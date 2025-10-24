CREATE TABLE IF NOT EXISTS t_user_roles (
  user_id INT NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  role_id INT NOT NULL REFERENCES m_roles(id) ON DELETE CASCADE,
  PRIMARY KEY (user_id, role_id) -- Mencegah duplikat
);