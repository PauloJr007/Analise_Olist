USE olist_db;

SELECT
    o.order_id,
    o.order_purchase_timestamp,
    o.order_status,
    oi.product_id,
    p.product_category_name,
    c.customer_state,
    c.customer_city,
    oi.price,
    oi.freight_value,
    oi.seller_id,
    op.payment_type
FROM olist_orders o
JOIN olist_order_items oi ON o.order_id = oi.order_id
JOIN olist_customers c ON o.customer_id = c.customer_id
JOIN olist_products p ON oi.product_id = p.product_id
JOIN olist_order_payments op ON o.order_id = op.order_id
WHERE o.order_status NOT IN ('em processamento', 'criado');







