const express = require('express');
const router = express.Router();
const kelurahanController = require('../controllers/kelurahanController');

/**
 * @swagger
 * tags:
 *   name: Kelurahans
 *   description: API untuk data kelurahan
 */

/**
 * @swagger
 * /kelurahans:
 *   get:
 *     summary: Mengambil semua data kelurahan
 *     tags: [Kelurahans]
 *     responses:
 *       200:
 *         description: Data kelurahan berhasil diambil
 */
router.get('/', kelurahanController.getAllKelurahans);

/**
 * @swagger
 * /kelurahans/{id}:
 *   get:
 *     summary: Mengambil data kelurahan berdasarkan ID
 *     tags: [Kelurahans]
 *     parameters:
 *       - in: path
 *         name: id
 *         required: true
 *         description: ID kelurahan
 *         schema:
 *           type: integer
 *     responses:
 *       200:
 *         description: Data kelurahan berhasil diambil
 *       404:
 *         description: Kelurahan tidak ditemukan
 */
router.get('/:id', kelurahanController.getKelurahanById);

module.exports = router;
