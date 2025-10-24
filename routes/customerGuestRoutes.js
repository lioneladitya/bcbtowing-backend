/**
 * @swagger
 * tags:
 *   name: Customer Guest
 *   description: API untuk mengelola data pelanggan tamu
 */

const express = require('express');
const router = express.Router();
const customerGuestController = require('../controllers/customerGuestController');

/**
 * @swagger
 * /customers-guest:
 *   get:
 *     summary: Mendapatkan semua pelanggan tamu
 *     tags: [Customer Guest]
 *     responses:
 *       200:
 *         description: Daftar pelanggan tamu berhasil diambil
 */
router.get('/', customerGuestController.getAll);

/**
 * @swagger
 * /customers-guest/{id}:
 *   get:
 *     summary: Mendapatkan pelanggan tamu berdasarkan ID
 *     tags: [Customer Guest]
 *     parameters:
 *       - in: path
 *         name: id
 *         required: true
 *         schema:
 *           type: integer
 *         description: ID pelanggan tamu
 *     responses:
 *       200:
 *         description: Data pelanggan tamu ditemukan
 *       404:
 *         description: Pelanggan tamu tidak ditemukan
 */
router.get('/:id', customerGuestController.getById);

/**
 * @swagger
 * /customers-guest/{id}:
 *   put:
 *     summary: Memperbarui data pelanggan tamu
 *     tags: [Customer Guest]
 *     parameters:
 *       - in: path
 *         name: id
 *         required: true
 *         schema:
 *           type: integer
 *         description: ID pelanggan tamu yang akan diperbarui
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             properties:
 *               name:
 *                 type: string
 *               phone:
 *                 type: string
 *               address:
 *                 type: string
 *     responses:
 *       200:
 *         description: Data pelanggan tamu berhasil diperbarui
 *       404:
 *         description: Pelanggan tamu tidak ditemukan
 */
router.put('/:id', customerGuestController.update);

/**
 * @swagger
 * /customers-guest/{id}:
 *   delete:
 *     summary: Menghapus pelanggan tamu
 *     tags: [Customer Guest]
 *     parameters:
 *       - in: path
 *         name: id
 *         required: true
 *         schema:
 *           type: integer
 *         description: ID pelanggan tamu yang akan dihapus
 *     responses:
 *       200:
 *         description: Pelanggan tamu berhasil dihapus
 *       404:
 *         description: Pelanggan tamu tidak ditemukan
 */
router.delete('/:id', customerGuestController.remove);

module.exports = router;
