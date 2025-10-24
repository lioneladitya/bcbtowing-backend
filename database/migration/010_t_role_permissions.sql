CREATE TABLE IF NOT EXISTS t_role_permissions (
  role_id INT NOT NULL REFERENCES m_roles(id) ON DELETE CASCADE,
  permission_id INT NOT NULL REFERENCES m_permissions(id) ON DELETE CASCADE,
  PRIMARY KEY (role_id, permission_id) -- Mencegah duplikat
);