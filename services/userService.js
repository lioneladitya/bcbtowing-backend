const db = require('../config/db');
const bcrypt = require('bcrypt');
const { v4: uuidv4 } = require('uuid');

async function getAllUsers() {
  const q = 'SELECT id, name, email, role, created_at, updated_at FROM users ORDER BY created_at DESC';
  const r = await db.query(q);
  return r.rows;
}

async function getUserById(id) {
  const q = 'SELECT id, name, email, role, created_at, updated_at FROM users WHERE id = $1';
  const r = await db.query(q, [id]);
  return r.rows[0];
}

async function updateUser(id, { name, email, password, role }) {
  const fields = [];
  const values = [];
  let idx = 1;

  if (name) { fields.push(`name = $${idx++}`); values.push(name); }
  if (email) { fields.push(`email = $${idx++}`); values.push(email); }
  if (password) { 
    const hashed = await bcrypt.hash(password, 10);
    fields.push(`password = $${idx++}`);
    values.push(hashed);
  }
  if (typeof role !== 'undefined') { fields.push(`role = $${idx++}`); values.push(role); }

  if (fields.length === 0) return getUserById(id);

  values.push(id);
  const q = `UPDATE users SET ${fields.join(', ')}, updated_at = now() WHERE id = $${idx} RETURNING id, name, email, role, created_at, updated_at`;
  const r = await db.query(q, values);
  return r.rows[0];
}

async function deleteUser(id) {
  const q = 'DELETE FROM users WHERE id = $1 RETURNING id';
  const r = await db.query(q, [id]);
  return r.rows[0];
}

module.exports = { getAllUsers, getUserById, updateUser, deleteUser };
