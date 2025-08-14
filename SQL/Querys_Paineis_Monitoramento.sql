USE olist_db;

-- FATO VENDAS
CREATE TABLE fato_vendas AS
SELECT
    o.order_id,
    c.customer_id,
    oi.product_id,
    s.seller_id,
    op.payment_sequential AS payment_id,
    r.review_id,
    o.order_purchase_timestamp,
    o.order_delivered_customer_date,
    o.order_estimated_delivery_date,
    oi.price,
    oi.freight_value,
    o.order_status,
    r.review_score,
    op.payment_type,
    op.payment_value
FROM olist_orders o
JOIN olist_order_items oi ON o.order_id = oi.order_id
JOIN olist_customers c ON o.customer_id = c.customer_id
JOIN olist_products p ON oi.product_id = p.product_id
JOIN olist_sellers s ON oi.seller_id = s.seller_id
LEFT JOIN olist_order_reviews r ON o.order_id = r.order_id
LEFT JOIN olist_order_payments op ON o.order_id = op.order_id;

-- DIM CLIENTE
CREATE TABLE dim_cliente AS
SELECT DISTINCT
    customer_id,
    customer_state,
    customer_city
FROM olist_customers;

-- DIM PRODUTO
CREATE TABLE dim_produto AS
SELECT DISTINCT
    product_id,
    product_category_name
FROM olist_products;

-- DIM VENDEDOR
CREATE TABLE dim_vendedor AS
SELECT DISTINCT
    seller_id,
    seller_state,
    seller_city
FROM olist_sellers;

-- DIM PAGAMENTO
CREATE TABLE dim_pagamento AS
SELECT DISTINCT
    payment_sequential AS payment_id,
    payment_type,
    payment_installments
FROM olist_order_payments;
