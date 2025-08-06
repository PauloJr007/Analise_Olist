USE olist_db;

-- Tabela Fato → Fato_Vendas
SELECT
    o.order_id,
    o.order_purchase_timestamp,
    oi.product_id,
    p.product_category_name,
    c.customer_state,
    c.customer_city,
    oi.price,
    oi.freight_value,
    r.review_score
FROM olist_orders o
JOIN olist_order_items oi ON o.order_id = oi.order_id
JOIN olist_customers c ON o.customer_id = c.customer_id
JOIN olist_products p ON oi.product_id = p.product_id
LEFT JOIN olist_order_reviews r ON o.order_id = r.order_id
WHERE o.order_status IN ('entregue', 'enviado', 'faturado', 'aprovado');


