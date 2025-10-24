const db = require('../config/db');

module.exports = {
  async getAll() {
    const res = await db.query(`
      SELECT o.*, c.name AS customer_name, p.base_price, vt.name AS vehicle_type, st.name AS service_type
      FROM t_order o
      LEFT JOIN m_customer_guest c ON o.customer_guest_id = c.id
      LEFT JOIN t_order_price p ON o.order_price_id = p.id
      LEFT JOIN m_vehicle_type vt ON vt.id = o.vehicle_type_id
      LEFT JOIN m_service_type st ON st.id = o.service_type_id
      ORDER BY o.id ASC
    `);
    return res.rows;
  },
  async getById(id) {
    const res = await db.query('SELECT * FROM t_order WHERE id=$1', [id]);
    return res.rows[0];
  },
  async create(data) {
    const {
      customer_guest_id,
      order_price_id,
      origin,
      destination,
      vehicle_type_id,
      service_type_id,
      insurance_option,
      vehicle_price,
      estimated_price,
      status,
    } = data;

    const res = await db.query(
      `INSERT INTO t_order (customer_guest_id, order_price_id, origin, destination, vehicle_type_id,
       service_type_id, insurance_option, vehicle_price, estimated_price, status)
       VALUES ($1,$2,$3,$4,$5,$6,$7,$8,$9,$10) RETURNING *`,
      [
        customer_guest_id,
        order_price_id,
        origin,
        destination,
        vehicle_type_id,
        service_type_id,
        insurance_option,
        vehicle_price,
        estimated_price,
        status,
      ]
    );
    return res.rows[0];
  },
  async update(id, data) {
    const {
      customer_guest_id,
      order_price_id,
      origin,
      destination,
      vehicle_type_id,
      service_type_id,
      insurance_option,
      vehicle_price,
      estimated_price,
      status,
    } = data;

    const res = await db.query(
      `UPDATE t_order SET customer_guest_id=$1, order_price_id=$2, origin=$3, destination=$4,
       vehicle_type_id=$5, service_type_id=$6, insurance_option=$7, vehicle_price=$8, estimated_price=$9, status=$10
       WHERE id=$11 RETURNING *`,
      [
        customer_guest_id,
        order_price_id,
        origin,
        destination,
        vehicle_type_id,
        service_type_id,
        insurance_option,
        vehicle_price,
        estimated_price,
        status,
        id,
      ]
    );
    return res.rows[0];
  },
  async remove(id) {
    const res = await db.query('DELETE FROM t_order WHERE id=$1 RETURNING *', [id]);
    return res.rows[0];
  },
};
