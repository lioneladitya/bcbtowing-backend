const db = require('../config/db');

module.exports = {
  async getAll() {
    const res = await db.query('SELECT * FROM m_customer_guest ORDER BY id ASC');
    return res.rows;
  },
  async getById(id) {
    const res = await db.query('SELECT * FROM m_customer_guest WHERE id = $1', [id]);
    return res.rows[0];
  },
  async create(data) {
    const { name, phone, email, address, note, pickup_date } = data;
    const res = await db.query(
      `INSERT INTO m_customer_guest (name, phone, email, address, note, pickup_date)
       VALUES ($1, $2, $3, $4, $5, $6) RETURNING *`,
      [name, phone, email, address, note, pickup_date]
    );
    return res.rows[0];
  },
  async update(id, data) {
    const { name, phone, email, address, note, pickup_date } = data;
    const res = await db.query(
      `UPDATE m_customer_guest SET name=$1, phone=$2, email=$3, address=$4,
       note=$5, pickup_date=$6 WHERE id=$7 RETURNING *`,
      [name, phone, email, address, note, pickup_date, id]
    );
    return res.rows[0];
  },
  async remove(id) {
    const res = await db.query('DELETE FROM m_customer_guest WHERE id=$1 RETURNING *', [id]);
    return res.rows[0];
  },
};
