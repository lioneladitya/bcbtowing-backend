const db = require('../config/db');

exports.getAll = async () => {
  const result = await db.query('SELECT * FROM m_vehicle_type ORDER BY id ASC');
  return result.rows;
};

exports.getById = async (id) => {
  const result = await db.query('SELECT * FROM m_vehicle_type WHERE id=$1', [id]);
  return result.rows[0];
};

exports.create = async (data) => {
  const { name, description } = data;
  const result = await db.query(
    'INSERT INTO m_vehicle_type (name, description) VALUES ($1, $2) RETURNING *',
    [name, description]
  );
  return result.rows[0];
};

exports.update = async (id, data) => {
  const { name, description } = data;
  const result = await db.query(
    'UPDATE m_vehicle_type SET name=$1, description=$2 WHERE id=$3 RETURNING *',
    [name, description, id]
  );
  return result.rows[0];
};

exports.remove = async (id) => {
  await db.query('DELETE FROM m_vehicle_type WHERE id=$1', [id]);
  return true;
};
