USE olist_db;

SELECT
	o.order_id,
	o.order_purchase_timestamp,
	o.order_delivered_customer_date,
	o.order_estimated_delivery_date,
	oi.product_id,
	oi.seller_id,
	p.product_category_name,
	c.customer_state,
	c.customer_city,
	oi.freight_value,
	r.review_score
FROM olist_orders o
JOIN olist_order_items oi ON o.order_id = oi.order_id
JOIN olist_customers c ON o.customer_id = c.customer_id
JOIN olist_products p ON oi.product_id = p.product_id
LEFT JOIN olist_order_reviews r ON o.order_id = r.order_id
WHERE order_status = 'entregue';
