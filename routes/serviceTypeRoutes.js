/**
 * @swagger
 * tags:
 *   name: Service Type
 *   description: API untuk data jenis layanan
 */

const express = require('express');
const router = express.Router();
const controller = require('../controllers/serviceTypeController');

/**
 * @swagger
 * /service-types:
 *   get:
 *     summary: Ambil semua data jenis layanan
 *     tags: [Service Type]
 *     responses:
 *       200:
 *         description: Data berhasil diambil
 */
router.get('/', controller.getAll);

/**
 * @swagger
 * /service-types/{id}:
 *   get:
 *     summary: Ambil detail jenis layanan
 *     tags: [Service Type]
 *     parameters:
 *       - name: id
 *         in: path
 *         required: true
 *         schema:
 *           type: integer
 */
router.get('/:id', controller.getById);

/**
 * @swagger
 * /service-types:
 *   post:
 *     summary: Tambah jenis layanan
 *     tags: [Service Type]
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
 */
router.post('/', controller.create);

/**
 * @swagger
 * /service-types/{id}:
 *   put:
 *     summary: Update jenis layanan
 *     tags: [Service Type]
 *     parameters:
 *       - name: id
 *         in: path
 *         required: true
 */
router.put('/:id', controller.update);

/**
 * @swagger
 * /service-types/{id}:
 *   delete:
 *     summary: Hapus jenis layanan
 *     tags: [Service Type]
 *     parameters:
 *       - name: id
 *         in: path
 *         required: true
 */
router.delete('/:id', controller.remove);

module.exports = router;
