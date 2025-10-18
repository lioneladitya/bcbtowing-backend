const db = require('../config/db');
const bcrypt = require('bcrypt');
const jwt = require('jsonwebtoken');
require('dotenv').config();

const SALT_ROUNDS = 10;

async function register({ name, email, password }) {
  const hashed = await bcrypt.hash(password, SALT_ROUNDS);

  // Jangan insert id karena auto increment dari database
  const query = `INSERT INTO users (name, email, password) 
                 VALUES ($1, $2, $3) 
                 RETURNING id, name, email, role, created_at`;
  const values = [name, email, hashed];

  const result = await db.query(query, values);
  return result.rows[0];
}

async function login({ email, password }) {
  const q = 'SELECT id, password, name, email, role FROM users WHERE email = $1';
  const r = await db.query(q, [email]);
  if (r.rows.length === 0) throw new Error('Invalid credentials');

  const user = r.rows[0];
  const match = await bcrypt.compare(password, user.password);
  if (!match) throw new Error('Invalid credentials');

  const payload = { id: user.id, role: user.role };
  const token = jwt.sign(payload, process.env.JWT_SECRET, { expiresIn: process.env.JWT_EXPIRES_IN || '1h' });

  return { 
    token, 
    user: { id: user.id, name: user.name, email: user.email, role: user.role } 
  };
}

module.exports = { register, login };
