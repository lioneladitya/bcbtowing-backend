const express = require('express');
const router = express.Router();
const kecamatanController = require('../controllers/kecamatanController');

/**
 * @swagger
 * tags:
 *   name: Kecamatan
 *   description: API untuk manajemen kecamatan
 */

/**
 * @swagger
 * /kecamatans:
 *   get:
 *     summary: Mendapatkan semua kecamatan
 *     tags: [Kecamatan]
 *     responses:
 *       200:
 *         description: Berhasil mendapatkan daftar kecamatan
 */
router.get('/', kecamatanController.getAll);

/**
 * @swagger
 * /kecamatans/{id}:
 *   get:
 *     summary: Mendapatkan detail kecamatan berdasarkan ID
 *     tags: [Kecamatan]
 *     parameters:
 *       - in: path
 *         name: id
 *         required: true
 *         schema:
 *           type: integer
 *     responses:
 *       200:
 *         description: Detail kecamatan berhasil diambil
 */
router.get('/:id', kecamatanController.getById);

/**
 * @swagger
 * /kecamatans:
 *   post:
 *     summary: Menambahkan data kecamatan baru
 *     tags: [Kecamatan]
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             properties:
 *               kabupaten_id:
 *                 type: integer
 *               code:
 *                 type: string
 *               name:
 *                 type: string
 *               full_code:
 *                 type: string
 *     responses:
 *       201:
 *         description: Kecamatan berhasil ditambahkan
 */
router.post('/', kecamatanController.create);

/**
 * @swagger
 * /kecamatans/{id}:
 *   put:
 *     summary: Memperbarui data kecamatan berdasarkan ID
 *     tags: [Kecamatan]
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
 *               kabupaten_id:
 *                 type: integer
 *               code:
 *                 type: string
 *               name:
 *                 type: string
 *               full_code:
 *                 type: string
 *     responses:
 *       200:
 *         description: Kecamatan berhasil diperbarui
 */
router.put('/:id', kecamatanController.update);

/**
 * @swagger
 * /kecamatans/{id}:
 *   delete:
 *     summary: Menghapus data kecamatan berdasarkan ID
 *     tags: [Kecamatan]
 *     parameters:
 *       - in: path
 *         name: id
 *         required: true
 *         schema:
 *           type: integer
 *     responses:
 *       200:
 *         description: Kecamatan berhasil dihapus
 */
router.delete('/:id', kecamatanController.remove);

module.exports = router;
