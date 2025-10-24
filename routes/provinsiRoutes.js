const express = require('express');
const router = express.Router();
const provinsiController = require('../controllers/provinsiController');

/**
 * @swagger
 * tags:
 *   name: Provinsis
 *   description: API untuk mengelola data provinsi
 */

/**
 * @swagger
 * /provinsis:
 *   get:
 *     summary: Mendapatkan semua data provinsi
 *     tags: [Provinsis]
 *     responses:
 *       200:
 *         description: Berhasil mengambil data
 */
router.get('/', provinsiController.getAll);

/**
 * @swagger
 * /provinsis/{id}:
 *   get:
 *     summary: Mendapatkan data provinsi berdasarkan ID
 *     tags: [Provinsis]
 *     parameters:
 *       - in: path
 *         name: id
 *         schema:
 *           type: integer
 *         required: true
 *         description: ID provinsi
 *     responses:
 *       200:
 *         description: Data ditemukan
 */
router.get('/:id', provinsiController.getById);

/**
 * @swagger
 * /provinsis:
 *   post:
 *     summary: Menambahkan data provinsi baru
 *     tags: [Provinsis]
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             properties:
 *               name:
 *                 type: string
 *               code:
 *                 type: string
 *     responses:
 *       201:
 *         description: Berhasil menambahkan data
 */
router.post('/', provinsiController.create);

/**
 * @swagger
 * /provinsis/{id}:
 *   put:
 *     summary: Memperbarui data provinsi
 *     tags: [Provinsis]
 *     parameters:
 *       - in: path
 *         name: id
 *         required: true
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             properties:
 *               name:
 *                 type: string
 *               code:
 *                 type: string
 *     responses:
 *       200:
 *         description: Berhasil memperbarui data
 */
router.put('/:id', provinsiController.update);

/**
 * @swagger
 * /provinsis/{id}:
 *   delete:
 *     summary: Menghapus data provinsi berdasarkan ID
 *     tags: [Provinsis]
 *     parameters:
 *       - in: path
 *         name: id
 *         required: true
 *     responses:
 *       200:
 *         description: Data berhasil dihapus
 */
router.delete('/:id', provinsiController.remove);

module.exports = router;
