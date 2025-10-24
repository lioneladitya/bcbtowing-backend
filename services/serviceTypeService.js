const db = require('../config/db');

module.exports = {
  async getAll() {
    const res = await db.query('SELECT * FROM m_service_type ORDER BY id ASC');
    return res.rows;
  },

  async getById(id) {
    const res = await db.query('SELECT * FROM m_service_type WHERE id = $1', [id]);
    return res.rows[0];
  },

  async create({ name, description }) {
    const res = await db.query(
      'INSERT INTO m_service_type (name, description) VALUES ($1, $2) RETURNING *',
      [name, description]
    );
    return res.rows[0];
  },

  async update(id, { name, description }) {
    const res = await db.query(
      'UPDATE m_service_type SET name = $1, description = $2 WHERE id = $3 RETURNING *',
      [name, description, id]
    );
    return res.rows[0];
  },

  async remove(id) {
    const res = await db.query('DELETE FROM m_service_type WHERE id = $1 RETURNING *', [id]);
    return res.rows[0];
  },
};
