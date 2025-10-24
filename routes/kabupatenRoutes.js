const express = require('express');
const router = express.Router();
const kabupatenController = require('../controllers/kabupatenController');

/**
 * @swagger
 * tags:
 *   name: Kabupaten
 *   description: API untuk manajemen kabupaten
 */

/**
 * @swagger
 * /kabupatens:
 *   get:
 *     summary: Mendapatkan semua kabupaten
 *     tags: [Kabupaten]
 *     responses:
 *       200:
 *         description: Berhasil mendapatkan daftar kabupaten
 */
router.get('/', kabupatenController.getAll);

/**
 * @swagger
 * /kabupatens/{id}:
 *   get:
 *     summary: Mendapatkan detail kabupaten berdasarkan ID
 *     tags: [Kabupaten]
 *     parameters:
 *       - in: path
 *         name: id
 *         required: true
 *         schema:
 *           type: integer
 *     responses:
 *       200:
 *         description: Detail kabupaten berhasil diambil
 */
router.get('/:id', kabupatenController.getById);

/**
 * @swagger
 * /kabupatens:
 *   post:
 *     summary: Menambahkan data kabupaten baru
 *     tags: [Kabupaten]
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             properties:
 *               provinsi_id:
 *                 type: integer
 *               type:
 *                 type: string
 *               name:
 *                 type: string
 *               code:
 *                 type: string
 *               full_code:
 *                 type: string
 *     responses:
 *       201:
 *         description: Kabupaten berhasil ditambahkan
 */
router.post('/', kabupatenController.create);

/**
 * @swagger
 * /kabupatens/{id}:
 *   put:
 *     summary: Memperbarui data kabupaten berdasarkan ID
 *     tags: [Kabupaten]
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
 *               provinsi_id:
 *                 type: integer
 *               type:
 *                 type: string
 *               name:
 *                 type: string
 *               code:
 *                 type: string
 *               full_code:
 *                 type: string
 *     responses:
 *       200:
 *         description: Kabupaten berhasil diperbarui
 */
router.put('/:id', kabupatenController.update);

/**
 * @swagger
 * /kabupatens/{id}:
 *   delete:
 *     summary: Menghapus data kabupaten berdasarkan ID
 *     tags: [Kabupaten]
 *     parameters:
 *       - in: path
 *         name: id
 *         required: true
 *         schema:
 *           type: integer
 *     responses:
 *       200:
 *         description: Kabupaten berhasil dihapus
 */
router.delete('/:id', kabupatenController.remove);

module.exports = router;
