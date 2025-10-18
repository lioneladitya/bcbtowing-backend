const userService = require('../services/userService');
const { successResponse, errorResponse } = require('../utils/response');

async function listUsers(req, res) {
  try {
    const users = await userService.getAllUsers();
    return successResponse(res, 'Users fetched', users);
  } catch (err) {
    console.error(err);
    return errorResponse(res, 'Failed to fetch users');
  }
}

async function getUser(req, res) {
  try {
    const user = await userService.getUserById(req.params.id);
    if (!user) return errorResponse(res, 'User not found', {}, 404);
    return successResponse(res, 'User fetched', user);
  } catch (err) {
    console.error(err);
    return errorResponse(res, 'Failed to fetch user');
  }
}

async function updateUser(req, res) {
  try {
    const updated = await userService.updateUser(req.params.id, req.body);
    return successResponse(res, 'User updated', updated);
  } catch (err) {
    console.error(err);
    return errorResponse(res, 'Failed to update user');
  }
}

async function deleteUser(req, res) {
  try {
    const deleted = await userService.deleteUser(req.params.id);
    if (!deleted) return errorResponse(res, 'User not found', {}, 404);
    return successResponse(res, 'User deleted', deleted);
  } catch (err) {
    console.error(err);
    return errorResponse(res, 'Failed to delete user');
  }
}

module.exports = { listUsers, getUser, updateUser, deleteUser };
