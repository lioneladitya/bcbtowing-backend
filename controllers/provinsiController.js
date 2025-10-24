const provinsiService = require('../services/provinsiService');
const { successResponse, errorResponse } = require('../utils/response');

module.exports = {
  async getAll(req, res) {
    try {
      const data = await provinsiService.getAll();
      return successResponse(res, 'Berhasil mendapatkan semua data provinsi', data);
    } catch (err) {
      return errorResponse(res, err.message);
    }
  },

  async getById(req, res) {
    try {
      const data = await provinsiService.getById(req.params.id);
      if (!data) return errorResponse(res, 'Provinsi tidak ditemukan', 404);
      return successResponse(res, 'Berhasil mendapatkan data provinsi', data);
    } catch (err) {
      return errorResponse(res, err.message);
    }
  },

  async create(req, res) {
    try {
      const data = await provinsiService.create(req.body);
      return successResponse(res, 'Berhasil menambahkan provinsi', data);
    } catch (err) {
      return errorResponse(res, err.message);
    }
  },

  async update(req, res) {
    try {
      const data = await provinsiService.update(req.params.id, req.body);
      if (!data) return errorResponse(res, 'Provinsi tidak ditemukan', 404);
      return successResponse(res, 'Berhasil memperbarui provinsi', data);
    } catch (err) {
      return errorResponse(res, err.message);
    }
  },

  async remove(req, res) {
    try {
      const data = await provinsiService.remove(req.params.id);
      if (!data) return errorResponse(res, 'Provinsi tidak ditemukan', 404);
      return successResponse(res, 'Berhasil menghapus provinsi', data);
    } catch (err) {
      return errorResponse(res, err.message);
    }
  },
};
