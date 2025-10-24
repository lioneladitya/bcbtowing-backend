const kabupatenService = require('../services/kabupatenService');
const { successResponse, errorResponse } = require('../utils/response');

module.exports = {
  async getAll(req, res) {
    try {
      const data = await kabupatenService.getAll();
      successResponse(res, 'Berhasil mengambil data kabupaten', data);
    } catch (error) {
      errorResponse(res, 'Gagal mengambil data kabupaten', error);
    }
  },

  async getById(req, res) {
    try {
      const { id } = req.params;
      const data = await kabupatenService.getById(id);
      if (!data) return errorResponse(res, 'Kabupaten tidak ditemukan', null, 404);
      successResponse(res, 'Berhasil mengambil detail kabupaten', data);
    } catch (error) {
      errorResponse(res, 'Gagal mengambil detail kabupaten', error);
    }
  },

  async create(req, res) {
    try {
      const data = await kabupatenService.create(req.body);
      successResponse(res, 'Kabupaten berhasil ditambahkan', data);
    } catch (error) {
      errorResponse(res, 'Gagal menambahkan kabupaten', error);
    }
  },

  async update(req, res) {
    try {
      const { id } = req.params;
      const data = await kabupatenService.update(id, req.body);
      if (!data) return errorResponse(res, 'Kabupaten tidak ditemukan', null, 404);
      successResponse(res, 'Kabupaten berhasil diperbarui', data);
    } catch (error) {
      errorResponse(res, 'Gagal memperbarui kabupaten', error);
    }
  },

  async remove(req, res) {
    try {
      const { id } = req.params;
      const data = await kabupatenService.remove(id);
      if (!data) return errorResponse(res, 'Kabupaten tidak ditemukan', null, 404);
      successResponse(res, 'Kabupaten berhasil dihapus', data);
    } catch (error) {
      errorResponse(res, 'Gagal menghapus kabupaten', error);
    }
  },
};
