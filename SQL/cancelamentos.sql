USE olist_db;

SELECT
	o.order_id,
	o.order_purchase_timestamp,
	oi.product_id,
	p.product_category_name,
	s.seller_id,
	c.customer_state,
	c.customer_city,
	oi.price,
	oi.freight_value
FROM olist_orders o
JOIN olist_order_items oi ON o.order_id = oi.order_id
JOIN olist_customers c ON o.customer_id = c.customer_id
JOIN olist_products p ON oi.product_id = p.product_id
JOIN olist_sellers s ON oi.seller_id = s.seller_id
WHERE o.order_status = 'cancelado';