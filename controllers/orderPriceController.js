const service = require('../services/orderPriceService');

// ✅ Ambil semua harga (aktif dan nonaktif)
exports.getAll = async (req, res) => {
  try {
    const data = await service.getAll();
    res.json({
      success: true,
      message: 'Data harga berhasil diambil',
      data,
    });
  } catch (err) {
    res.status(500).json({
      success: false,
      message: 'Gagal mengambil data harga',
      error: err.message,
    });
  }
};

// ✅ Ambil hanya harga aktif (untuk digunakan oleh aplikasi order)
exports.getActive = async (req, res) => {
  try {
    const data = await service.getActive();
    res.json({
      success: true,
      message: 'Data harga aktif berhasil diambil',
      data,
    });
  } catch (err) {
    res.status(500).json({
      success: false,
      message: 'Gagal mengambil data harga aktif',
      error: err.message,
    });
  }
};

// ✅ Ambil detail harga berdasarkan ID
exports.getById = async (req, res) => {
  try {
    const data = await service.getById(req.params.id);
    if (!data) {
      return res.status(404).json({
        success: false,
        message: 'Data harga tidak ditemukan',
      });
    }
    res.json({
      success: true,
      message: 'Detail harga berhasil diambil',
      data,
    });
  } catch (err) {
    res.status(500).json({
      success: false,
      message: 'Gagal mengambil detail harga',
      error: err.message,
    });
  }
};

// ✅ Tambah harga baru (otomatis menonaktifkan versi lama)
exports.create = async (req, res) => {
  try {
    const data = await service.create(req.body);
    res.status(201).json({
      success: true,
      message: 'Harga baru berhasil ditambahkan dan harga lama dinonaktifkan',
      data,
    });
  } catch (err) {
    res.status(500).json({
      success: false,
      message: 'Gagal menambahkan harga baru',
      error: err.message,
    });
  }
};

// ✅ Update harga (bisa ubah base_price, insurance_rate, status aktif)
exports.update = async (req, res) => {
  try {
    const data = await service.update(req.params.id, req.body);
    if (!data) {
      return res.status(404).json({
        success: false,
        message: 'Data harga tidak ditemukan',
      });
    }
    res.json({
      success: true,
      message: 'Data harga berhasil diperbarui',
      data,
    });
  } catch (err) {
    res.status(500).json({
      success: false,
      message: 'Gagal memperbarui data harga',
      error: err.message,
    });
  }
};

// ✅ Update harga secara global
exports.updateGlobal = async (req, res) => {
    try {
      const { service_type_id, vehicle_type_id, increase_by_percent, new_base_price } = req.body;
  
      // Validasi input
      if (!service_type_id && !vehicle_type_id && !increase_by_percent && !new_base_price) {
        return res.status(400).json({
          success: false,
          message: 'Minimal salah satu parameter harus diisi (service_type_id, vehicle_type_id, increase_by_percent, atau new_base_price)',
        });
      }
  
      const data = await service.updateGlobal(req.body);
  
      res.json({
        success: true,
        message: 'Harga berhasil diperbarui secara global',
        data,
      });
    } catch (err) {
      res.status(500).json({
        success: false,
        message: 'Gagal memperbarui harga secara global',
        error: err.message,
      });
    }
  };

// ✅ Hapus harga
exports.remove = async (req, res) => {
  try {
    const data = await service.remove(req.params.id);
    if (!data) {
      return res.status(404).json({
        success: false,
        message: 'Data harga tidak ditemukan',
      });
    }
    res.json({
      success: true,
      message: 'Data harga berhasil dihapus',
      data,
    });
  } catch (err) {
    res.status(500).json({
      success: false,
      message: 'Gagal menghapus data harga',
      error: err.message,
    });
  }
};
