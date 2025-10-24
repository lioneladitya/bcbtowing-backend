/**
 * @swagger
 * tags:
 *   name: Vehicle Type
 *   description: API untuk data jenis kendaraan
 */

const express = require('express');
const router = express.Router();
const vehicleTypeController = require('../controllers/vehicleController');

/**
 * @swagger
 * /vehicle-types:
 *   get:
 *     summary: Ambil semua jenis kendaraan
 *     tags: [Vehicle Type]
 *     responses:
 *       200:
 *         description: Berhasil mengambil data
 */
router.get('/', vehicleTypeController.getAll);

/**
 * @swagger
 * /vehicle-types/{id}:
 *   get:
 *     summary: Ambil detail jenis kendaraan berdasarkan ID
 *     tags: [Vehicle Type]
 *     parameters:
 *       - name: id
 *         in: path
 *         required: true
 *         schema:
 *           type: integer
 *     responses:
 *       200:
 *         description: Data ditemukan
 */
router.get('/:id', vehicleTypeController.getById);

/**
 * @swagger
 * /vehicle-types:
 *   post:
 *     summary: Tambah jenis kendaraan baru
 *     tags: [Vehicle Type]
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             properties:
 *               name:
 *                 type: string
 *               description:
 *                 type: string
 *     responses:
 *       201:
 *         description: Data berhasil ditambahkan
 */
router.post('/', vehicleTypeController.create);

/**
 * @swagger
 * /vehicle-types/{id}:
 *   put:
 *     summary: Perbarui jenis kendaraan
 *     tags: [Vehicle Type]
 *     parameters:
 *       - in: path
 *         name: id
 *         required: true
 *         schema:
 *           type: integer
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             properties:
 *               name:
 *                 type: string
 *               description:
 *                 type: string
 *     responses:
 *       200:
 *         description: Data berhasil diperbarui
 */
router.put('/:id', vehicleTypeController.update);

/**
 * @swagger
 * /vehicle-types/{id}:
 *   delete:
 *     summary: Hapus jenis kendaraan
 *     tags: [Vehicle Type]
 *     parameters:
 *       - in: path
 *         name: id
 *         required: true
 *         schema:
 *           type: integer
 *     responses:
 *       200:
 *         description: Data berhasil dihapus
 */
router.delete('/:id', vehicleTypeController.remove);

module.exports = router;
