const db = require('../config/db');

const getAllKelurahans = async () => {
  const result = await db.query('SELECT * FROM kelurahans ORDER BY id ASC');
  return result.rows;
};

const getKelurahanById = async (id) => {
  const result = await db.query('SELECT * FROM kelurahans WHERE id = $1', [id]);
  return result.rows[0];
};

module.exports = {
  getAllKelurahans,
  getKelurahanById,
};
