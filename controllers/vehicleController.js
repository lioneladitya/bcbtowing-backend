const vehicleService = require('../services/vehicleService');
const { successResponse, errorResponse } = require('../utils/response');

exports.getAll = async (req, res) => {
  try {
    const data = await vehicleService.getAll();
    successResponse(res, 'Data vehicle type berhasil diambil', data);
  } catch (err) {
    errorResponse(res, err.message);
  }
};

exports.getById = async (req, res) => {
  try {
    const data = await vehicleService.getById(req.params.id);
    if (!data) return errorResponse(res, 'Vehicle type tidak ditemukan', 404);
    successResponse(res, 'Detail vehicle type berhasil diambil', data);
  } catch (err) {
    errorResponse(res, err.message);
  }
};

exports.create = async (req, res) => {
  try {
    const data = await vehicleService.create(req.body);
    successResponse(res, 'Vehicle type berhasil dibuat', data);
  } catch (err) {
    errorResponse(res, err.message);
  }
};

exports.update = async (req, res) => {
  try {
    const data = await vehicleService.update(req.params.id, req.body);
    successResponse(res, 'Vehicle type berhasil diperbarui', data);
  } catch (err) {
    errorResponse(res, err.message);
  }
};

exports.remove = async (req, res) => {
  try {
    await vehicleService.remove(req.params.id);
    successResponse(res, 'Vehicle type berhasil dihapus');
  } catch (err) {
    errorResponse(res, err.message);
  }
};
