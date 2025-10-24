const kelurahanService = require('../services/kelurahanService');
const { successResponse, errorResponse } = require('../utils/response');

const getAllKelurahans = async (req, res) => {
  try {
    const kelurahans = await kelurahanService.getAllKelurahans();
    return successResponse(res, 'Data kelurahan berhasil diambil', kelurahans);
  } catch (error) {
    return errorResponse(res, error.message);
  }
};

const getKelurahanById = async (req, res) => {
  try {
    const { id } = req.params;
    const kelurahan = await kelurahanService.getKelurahanById(id);
    if (!kelurahan) return errorResponse(res, 'Kelurahan tidak ditemukan', 404);
    return successResponse(res, 'Data kelurahan berhasil diambil', kelurahan);
  } catch (error) {
    return errorResponse(res, error.message);
  }
};

module.exports = {
  getAllKelurahans,
  getKelurahanById,
};
