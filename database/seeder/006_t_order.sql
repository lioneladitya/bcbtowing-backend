INSERT INTO t_order (
    customer_guest_id,
    order_price_id,
    origin,
    destination,
    vehicle_type_id,
    service_type_id,
    insurance_option,
    vehicle_price,
    estimated_price,
    status
) VALUES
(1, 1, 'Kota Bandar Lampung', 'Menggala', 1, 1, 'Tanpa Asuransi', 200000000, 1200000, 1),
(2, 2, 'Kota Bandar Lampung', 'Sidomulyo', 1, 1, 'Tanpa Asuransi', 180000000, 1100000, 0);
