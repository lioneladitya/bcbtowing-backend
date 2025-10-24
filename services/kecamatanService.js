const db = require('../config/db');

module.exports = {
  async getAll() {
    const res = await db.query(`
      SELECT id, kabupaten_id, code, name, full_code, created_at, updated_at
      FROM kecamatans
      ORDER BY id ASC
    `);
    return res.rows;
  },

  async getById(id) {
    const res = await db.query(
      `SELECT id, kabupaten_id, code, name, full_code, created_at, updated_at
       FROM kecamatans WHERE id = $1`,
      [id]
    );
    return res.rows[0];
  },

  async create(data) {
    const { kabupaten_id, code, name, full_code } = data;
    const res = await db.query(
      `INSERT INTO kecamatans (kabupaten_id, code, name, full_code)
       VALUES ($1, $2, $3, $4)
       RETURNING *`,
      [kabupaten_id, code, name, full_code]
    );
    return res.rows[0];
  },

  async update(id, data) {
    const { kabupaten_id, code, name, full_code } = data;
    const res = await db.query(
      `UPDATE kecamatans
       SET kabupaten_id = $1, code = $2, name = $3, full_code = $4, updated_at = CURRENT_TIMESTAMP
       WHERE id = $5 RETURNING *`,
      [kabupaten_id, code, name, full_code, id]
    );
    return res.rows[0];
  },

  async remove(id) {
    const res = await db.query('DELETE FROM kecamatans WHERE id = $1 RETURNING *', [id]);
    return res.rows[0];
  },
};
