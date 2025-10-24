/**
 * @swagger
 * tags:
 *   name: Order Price
 *   description: API untuk mengelola harga pesanan 
 */

const express = require('express');
const router = express.Router();
const orderPriceController = require('../controllers/orderPriceController');

/**
 * @swagger
 * /order-prices:
 *   get:
 *     summary: Mendapatkan semua data harga pesanan (termasuk yang tidak aktif)
 *     tags: [Order Price]
 *     responses:
 *       200:
 *         description: Daftar harga pesanan berhasil diambil
 */
router.get('/', orderPriceController.getAll);

/**
 * @swagger
 * /order-prices/active:
 *   get:
 *     summary: Mendapatkan semua harga pesanan yang aktif saat ini
 *     tags: [Order Price]
 *     responses:
 *       200:
 *         description: Daftar harga aktif berhasil diambil
 */
router.get('/active', orderPriceController.getActive);

/**
 * @swagger
 * /order-prices/{id}:
 *   get:
 *     summary: Mendapatkan detail harga pesanan berdasarkan ID
 *     tags: [Order Price]
 *     parameters:
 *       - in: path
 *         name: id
 *         required: true
 *         schema:
 *           type: integer
 *         description: ID harga pesanan
 *     responses:
 *       200:
 *         description: Data harga pesanan ditemukan
 *       404:
 *         description: Data tidak ditemukan
 */
router.get('/:id', orderPriceController.getById);

/**
 * @swagger
 * /order-prices:
 *   post:
 *     summary: Menambahkan versi harga pesanan baru (harga lama otomatis nonaktif)
 *     tags: [Order Price]
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             required:
 *               - origin
 *               - destination
 *               - vehicle_type_id
 *               - service_type_id
 *               - base_price
 *             properties:
 *               origin:
 *                 type: string
 *                 example: "Jakarta"
 *               destination:
 *                 type: string
 *                 example: "Bandung"
 *               vehicle_type_id:
 *                 type: integer
 *                 example: 1
 *               service_type_id:
 *                 type: integer
 *                 example: 2
 *               base_price:
 *                 type: number
 *                 example: 75000
 *               insurance_option:
 *                 type: boolean
 *                 example: true
 *               insurance_rate:
 *                 type: number
 *                 example: 0.05
 *               effective_date:
 *                 type: string
 *                 format: date-time
 *                 example: "2025-10-23T00:00:00Z"
 *     responses:
 *       201:
 *         description: Versi harga baru berhasil ditambahkan dan harga lama dinonaktifkan
 */
router.post('/', orderPriceController.create);

/**
 * @swagger
 * /order-prices/{id}:
 *   put:
 *     summary: Memperbarui detail harga pesanan (tanpa membuat versi baru)
 *     tags: [Order Price]
 *     parameters:
 *       - in: path
 *         name: id
 *         required: true
 *         schema:
 *           type: integer
 *         description: ID harga pesanan
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             properties:
 *               origin:
 *                 type: string
 *               destination:
 *                 type: string
 *               vehicle_type_id:
 *                 type: integer
 *               service_type_id:
 *                 type: integer
 *               base_price:
 *                 type: number
 *               insurance_option:
 *                 type: boolean
 *               insurance_rate:
 *                 type: number
 *               is_active:
 *                 type: boolean
 *               effective_date:
 *                 type: string
 *                 format: date-time
 *     responses:
 *       200:
 *         description: Data harga pesanan berhasil diperbarui
 *       404:
 *         description: Data tidak ditemukan
 */
router.put('/:id', orderPriceController.update);

/**
 * @swagger
 * /order-prices/update-global:
 *   put:
 *     summary: Memperbarui harga secara global (berdasarkan jenis layanan, kendaraan, atau semua)
 *     tags: [Order Price]
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             properties:
 *               service_type_id:
 *                 type: integer
 *                 example: 2
 *                 description: Filter berdasarkan jenis layanan
 *               vehicle_type_id:
 *                 type: integer
 *                 example: 1
 *                 description: Filter berdasarkan jenis kendaraan
 *               increase_by_percent:
 *                 type: number
 *                 example: 10
 *                 description: Persentase kenaikan harga
 *               new_base_price:
 *                 type: number
 *                 example: 85000
 *                 description: Harga dasar baru yang akan diterapkan
 *     responses:
 *       200:
 *         description: Harga berhasil diperbarui secara global
 *       400:
 *         description: Permintaan tidak valid (parameter tidak lengkap)
 */
router.put('/update-global', orderPriceController.updateGlobal);

/**
 * @swagger
 * /order-prices/{id}:
 *   delete:
 *     summary: Menghapus data harga pesanan berdasarkan ID
 *     tags: [Order Price]
 *     parameters:
 *       - in: path
 *         name: id
 *         required: true
 *         schema:
 *           type: integer
 *         description: ID harga pesanan
 *     responses:
 *       200:
 *         description: Data harga pesanan berhasil dihapus
 *       404:
 *         description: Data tidak ditemukan
 */
router.delete('/:id', orderPriceController.remove);

module.exports = router;
