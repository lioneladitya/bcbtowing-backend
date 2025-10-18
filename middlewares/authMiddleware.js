const jwt = require('jsonwebtoken');
const db = require('../config/db');
require('dotenv').config();
const { errorResponse } = require('../utils/response');

async function authMiddleware(req, res, next) {
  const authHeader = req.headers.authorization;
  if (!authHeader || !authHeader.startsWith('Bearer ')) {
    return errorResponse(res, 'Token missing', {}, 401);
  }

  const token = authHeader.split(' ')[1];
  try {
    const decoded = jwt.verify(token, process.env.JWT_SECRET);
    // ambil user dari db
    const result = await db.query('SELECT id, name, email, role, created_at FROM users WHERE id = $1', [decoded.id]);
    if (result.rows.length === 0) {
      return errorResponse(res, 'User not found', {}, 401);
    }
    req.user = result.rows[0];
    next();
  } catch (err) {
    console.error(err);
    return errorResponse(res, 'Invalid or expired token', {}, 401);
  }
}

module.exports = authMiddleware;
