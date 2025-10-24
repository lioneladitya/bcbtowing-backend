const db = require('../config/db');

module.exports = {
  async getAll() {
    const res = await db.query('SELECT id, name, code, created_at, updated_at FROM provinsis ORDER BY id ASC');
    return res.rows;
  },

  async getById(id) {
    const res = await db.query('SELECT id, name, code, created_at, updated_at FROM provinsis WHERE id = $1', [id]);
    return res.rows[0];
  },

  async create(data) {
    const { name, code } = data;
    const res = await db.query(
      `INSERT INTO provinsis (name, code, created_at, updated_at)
       VALUES ($1, $2, NOW(), NOW()) RETURNING *`,
      [name, code]
    );
    return res.rows[0];
  },

  async update(id, data) {
    const { name, code } = data;
    const res = await db.query(
      `UPDATE provinsis SET name=$1, code=$2, updated_at=NOW() WHERE id=$3 RETURNING *`,
      [name, code, id]
    );
    return res.rows[0];
  },

  async remove(id) {
    const res = await db.query('DELETE FROM provinsis WHERE id=$1 RETURNING *', [id]);
    return res.rows[0];
  },
};
