/**
 * @swagger
 * tags:
 *   name: Order
 *   description: API untuk mengelola data pesanan
 */

const express = require('express');
const router = express.Router();
const orderController = require('../controllers/orderController');

/**
 * @swagger
 * /orders:
 *   get:
 *     summary: Mendapatkan semua data pesanan
 *     tags: [Order]
 *     responses:
 *       200:
 *         description: Daftar pesanan berhasil diambil
 */
router.get('/', orderController.getAll);

/**
 * @swagger
 * /orders/{id}:
 *   get:
 *     summary: Mendapatkan pesanan berdasarkan ID
 *     tags: [Order]
 *     parameters:
 *       - in: path
 *         name: id
 *         required: true
 *         schema:
 *           type: integer
 *         description: ID pesanan
 *     responses:
 *       200:
 *         description: Data pesanan ditemukan
 *       404:
 *         description: Pesanan tidak ditemukan
 */
router.get('/:id', orderController.getById);

/**
 * @swagger
 * /orders:
 *   post:
 *     summary: Menambahkan pesanan baru
 *     tags: [Order]
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             properties:
 *               customer_guest_id:
 *                 type: integer
 *                 example: 3
 *               vehicle_type:
 *                 type: string
 *                 example: "Mobil Derek"
 *               pickup_location:
 *                 type: string
 *                 example: "Jl. Merdeka No. 45"
 *               destination_location:
 *                 type: string
 *                 example: "Jl. Sudirman No. 10"
 *               distance_km:
 *                 type: number
 *                 example: 12.5
 *               total_price:
 *                 type: number
 *                 example: 250000
 *               status:
 *                 type: string
 *                 example: "pending"
 *     responses:
 *       201:
 *         description: Pesanan berhasil dibuat
 */
router.post('/', orderController.create);

/**
 * @swagger
 * /orders/{id}:
 *   put:
 *     summary: Memperbarui data pesanan
 *     tags: [Order]
 *     parameters:
 *       - in: path
 *         name: id
 *         required: true
 *         schema:
 *           type: integer
 *         description: ID pesanan yang akan diperbarui
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             properties:
 *               customer_guest_id:
 *                 type: integer
 *               vehicle_type:
 *                 type: string
 *               pickup_location:
 *                 type: string
 *               destination_location:
 *                 type: string
 *               distance_km:
 *                 type: number
 *               total_price:
 *                 type: number
 *               status:
 *                 type: string
 *     responses:
 *       200:
 *         description: Data pesanan berhasil diperbarui
 *       404:
 *         description: Pesanan tidak ditemukan
 */
router.put('/:id', orderController.update);

/**
 * @swagger
 * /orders/{id}:
 *   delete:
 *     summary: Menghapus pesanan
 *     tags: [Order]
 *     parameters:
 *       - in: path
 *         name: id
 *         required: true
 *         schema:
 *           type: integer
 *         description: ID pesanan yang akan dihapus
 *     responses:
 *       200:
 *         description: Pesanan berhasil dihapus
 *       404:
 *         description: Pesanan tidak ditemukan
 */
router.delete('/:id', orderController.remove);

module.exports = router;
