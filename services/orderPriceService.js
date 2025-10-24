const db = require("../config/db");

module.exports = {
  // 🔹 Ambil semua data harga (termasuk yang sudah tidak aktif)
  async getAll() {
    const res = await db.query(`
      SELECT p.*, vt.name AS vehicle_type, st.name AS service_type
      FROM t_order_price p
      LEFT JOIN m_vehicle_type vt ON vt.id = p.vehicle_type_id
      LEFT JOIN m_service_type st ON st.id = p.service_type_id
      ORDER BY p.effective_date DESC, p.id ASC
    `);
    return res.rows;
  },

  // 🔹 Ambil data harga berdasarkan ID
  async getById(id) {
    const res = await db.query(
      `SELECT p.*, vt.name AS vehicle_type, st.name AS service_type
       FROM t_order_price p
       LEFT JOIN m_vehicle_type vt ON vt.id = p.vehicle_type_id
       LEFT JOIN m_service_type st ON st.id = p.service_type_id
       WHERE p.id = $1`,
      [id]
    );
    return res.rows[0];
  },

  // 🔹 Tambahkan harga baru (versi baru), nonaktifkan harga lama
  async create(data) {
    const {
      origin,
      destination,
      vehicle_type_id,
      service_type_id,
      insurance_option,
      base_price,
      insurance_rate,
      effective_date, // optional
    } = data;

    // Nonaktifkan harga lama untuk kombinasi kendaraan + layanan yang sama
    await db.query(
      `UPDATE t_order_price
       SET is_active = FALSE
       WHERE vehicle_type_id = $1 AND service_type_id = $2 AND is_active = TRUE`,
      [vehicle_type_id, service_type_id]
    );

    // Tambahkan harga baru (aktif)
    const res = await db.query(
      `INSERT INTO t_order_price (
        origin, destination, vehicle_type_id, service_type_id,
        insurance_option, base_price, insurance_rate,
        effective_date, is_active, created_at
      )
      VALUES ($1,$2,$3,$4,$5,$6,$7,COALESCE($8, NOW()),TRUE,NOW())
      RETURNING *`,
      [
        origin,
        destination,
        vehicle_type_id,
        service_type_id,
        insurance_option,
        base_price,
        insurance_rate || 0,
        effective_date,
      ]
    );

    return res.rows[0];
  },

  // 🔹 Update harga tertentu (misalnya koreksi data)
  // Catatan: ini *tidak membuat versi baru*, hanya ubah data di baris yang sama
  async update(id, data) {
    const {
      origin,
      destination,
      vehicle_type_id,
      service_type_id,
      insurance_option,
      base_price,
      insurance_rate,
      is_active,
      effective_date,
    } = data;

    const res = await db.query(
      `UPDATE t_order_price
       SET origin=$1,
           destination=$2,
           vehicle_type_id=$3,
           service_type_id=$4,
           insurance_option=$5,
           base_price=$6,
           insurance_rate=$7,
           is_active=COALESCE($8, is_active),
           effective_date=COALESCE($9, effective_date),
           updated_at=NOW()
       WHERE id=$10
       RETURNING *`,
      [
        origin,
        destination,
        vehicle_type_id,
        service_type_id,
        insurance_option,
        base_price,
        insurance_rate,
        is_active,
        effective_date,
        id,
      ]
    );

    return res.rows[0];
  },

  // 🔹 Hapus harga (jika memang ingin menghapus total)
  async remove(id) {
    const res = await db.query(
      "DELETE FROM t_order_price WHERE id=$1 RETURNING *",
      [id]
    );
    return res.rows[0];
  },

  // 🔹 Ambil harga yang aktif (digunakan order baru)
  async getActive() {
    const res = await db.query(`
      SELECT p.*, vt.name AS vehicle_type, st.name AS service_type
      FROM t_order_price p
      LEFT JOIN m_vehicle_type vt ON vt.id = p.vehicle_type_id
      LEFT JOIN m_service_type st ON st.id = p.service_type_id
      WHERE p.is_active = TRUE
      AND p.effective_date <= NOW()
      ORDER BY p.effective_date DESC
    `);
    return res.rows;
  },

  async updateGlobal({ service_type_id, vehicle_type_id, increase_by_percent, new_base_price }) {
    let condition = [];
    let values = [];
  
    // Build WHERE clause dinamis
    if (service_type_id) {
      values.push(service_type_id);
      condition.push(`service_type_id = $${values.length}`);
    }
    if (vehicle_type_id) {
      values.push(vehicle_type_id);
      condition.push(`vehicle_type_id = $${values.length}`);
    }
  
    const whereClause = condition.length ? `WHERE ${condition.join(' AND ')}` : '';
  
    let query;
    if (increase_by_percent) {
      query = `
        UPDATE t_order_price
        SET base_price = base_price + (base_price * $${values.length + 1} / 100)
        ${whereClause}
        RETURNING *;
      `;
      values.push(increase_by_percent);
    } else if (new_base_price) {
      query = `
        UPDATE t_order_price
        SET base_price = $${values.length + 1}
        ${whereClause}
        RETURNING *;
      `;
      values.push(new_base_price);
    } else {
      throw new Error('Parameter tidak valid untuk update global');
    }
  
    const res = await db.query(query, values);
    return res.rows;
  },
  

  // 🔹 Ambil harga aktif berdasarkan tipe kendaraan & layanan
  async getActivePrice(service_type_id, vehicle_type_id) {
    const res = await db.query(
      `SELECT *
       FROM t_order_price
       WHERE service_type_id = $1
       AND vehicle_type_id = $2
       AND is_active = TRUE
       AND effective_date <= NOW()
       ORDER BY effective_date DESC
       LIMIT 1`,
      [service_type_id, vehicle_type_id]
    );
    return res.rows[0];
  },
};
