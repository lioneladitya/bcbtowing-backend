const authService = require('../services/authService');
const { successResponse, errorResponse } = require('../utils/response');

async function register(req, res) {
  try {
    const { name, email, password } = req.body;
    if (!name || !email || !password) return errorResponse(res, 'name, email and password are required', {}, 400);
    const user = await authService.register({ name, email, password });
    return successResponse(res, 'User registered', user, 201);
  } catch (err) {
    console.error(err);
    if (err.code === '23505') return errorResponse(res, 'Email already exists', {}, 400);
    return errorResponse(res, err.message || 'Register failed');
  }
}

async function login(req, res) {
  try {
    const { email, password } = req.body;
    if (!email || !password) return errorResponse(res, 'email and password are required', {}, 400);
    const { token, user } = await authService.login({ email, password });
    return successResponse(res, 'Login successful', { token, user });
  } catch (err) {
    console.error(err);
    return errorResponse(res, 'Invalid credentials', {}, 401);
  }
}

async function me(req, res) {
  try {
    // authMiddleware sudah attach req.user
    return successResponse(res, 'User profile', req.user);
  } catch (err) {
    console.error(err);
    return errorResponse(res, 'Failed to fetch profile');
  }
}

module.exports = { register, login, me };
