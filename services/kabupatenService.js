const db = require('../config/db');

module.exports = {
  async getAll() {
    const res = await db.query(`
      SELECT id, provinsi_id, type, name, code, full_code, created_at, updated_at
      FROM kabupatens
      ORDER BY id ASC
    `);
    return res.rows;
  },

  async getById(id) {
    const res = await db.query(
      `SELECT id, provinsi_id, type, name, code, full_code, created_at, updated_at
       FROM kabupatens WHERE id = $1`,
      [id]
    );
    return res.rows[0];
  },

  async create(data) {
    const { provinsi_id, type, name, code, full_code } = data;
    const res = await db.query(
      `INSERT INTO kabupatens (provinsi_id, type, name, code, full_code)
       VALUES ($1, $2, $3, $4, $5)
       RETURNING *`,
      [provinsi_id, type, name, code, full_code]
    );
    return res.rows[0];
  },

  async update(id, data) {
    const { provinsi_id, type, name, code, full_code } = data;
    const res = await db.query(
      `UPDATE kabupatens
       SET provinsi_id = $1, type = $2, name = $3, code = $4, full_code = $5, updated_at = CURRENT_TIMESTAMP
       WHERE id = $6 RETURNING *`,
      [provinsi_id, type, name, code, full_code, id]
    );
    return res.rows[0];
  },

  async remove(id) {
    const res = await db.query('DELETE FROM kabupatens WHERE id = $1 RETURNING *', [id]);
    return res.rows[0];
  },
};
