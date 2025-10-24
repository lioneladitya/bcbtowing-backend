const kecamatanService = require('../services/kecamatanService');
const { successResponse, errorResponse } = require('../utils/response');

module.exports = {
  async getAll(req, res) {
    try {
      const data = await kecamatanService.getAll();
      successResponse(res, 'Berhasil mengambil data kecamatan', data);
    } catch (error) {
      errorResponse(res, 'Gagal mengambil data kecamatan', error);
    }
  },

  async getById(req, res) {
    try {
      const { id } = req.params;
      const data = await kecamatanService.getById(id);
      if (!data) return errorResponse(res, 'Kecamatan tidak ditemukan', null, 404);
      successResponse(res, 'Berhasil mengambil detail kecamatan', data);
    } catch (error) {
      errorResponse(res, 'Gagal mengambil detail kecamatan', error);
    }
  },

  async create(req, res) {
    try {
      const data = await kecamatanService.create(req.body);
      successResponse(res, 'Kecamatan berhasil ditambahkan', data);
    } catch (error) {
      errorResponse(res, 'Gagal menambahkan kecamatan', error);
    }
  },

  async update(req, res) {
    try {
      const { id } = req.params;
      const data = await kecamatanService.update(id, req.body);
      if (!data) return errorResponse(res, 'Kecamatan tidak ditemukan', null, 404);
      successResponse(res, 'Kecamatan berhasil diperbarui', data);
    } catch (error) {
      errorResponse(res, 'Gagal memperbarui kecamatan', error);
    }
  },

  async remove(req, res) {
    try {
      const { id } = req.params;
      const data = await kecamatanService.remove(id);
      if (!data) return errorResponse(res, 'Kecamatan tidak ditemukan', null, 404);
      successResponse(res, 'Kecamatan berhasil dihapus', data);
    } catch (error) {
      errorResponse(res, 'Gagal menghapus kecamatan', error);
    }
  },
};
