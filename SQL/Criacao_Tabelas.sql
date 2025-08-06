CREATE DATABASE IF NOT EXISTS olist_db;
USE olist_db;

/* 1. Geolocalização */
CREATE TABLE olist_geolocation (
    geolocation_zip_code_prefix CHAR(8),
    geolocation_lat            FLOAT,
    geolocation_lng            FLOAT,
    geolocation_city           VARCHAR(38),
    geolocation_state          CHAR(2)
);

/* 2. Clientes */
CREATE TABLE olist_customers (
    customer_id              CHAR(32) PRIMARY KEY,
    customer_unique_id       CHAR(32),
    customer_zip_code_prefix CHAR(8),
    customer_city            VARCHAR(64),
    customer_state           CHAR(2)
);

/* 3. Vendedores */
CREATE TABLE olist_sellers (
    seller_id              CHAR(32) PRIMARY KEY,
    seller_zip_code_prefix CHAR(8),
    seller_city            VARCHAR(64),
    seller_state           CHAR(2)
);

/* 4. Produtos */
CREATE TABLE olist_products (
    product_id                CHAR(32) PRIMARY KEY,
    product_category_name     VARCHAR(64),
    product_name_lenght       INT,
    product_description_lenght INT,
    product_photos_qty        INT,
    product_weight_g          INT,
    product_length_cm         INT,
    product_height_cm         INT,
    product_width_cm          INT
);

/* 5. Pedidos */
CREATE TABLE olist_orders (
    order_id                     CHAR(32) PRIMARY KEY,
    customer_id                  CHAR(32) NOT NULL,
    order_status                 VARCHAR(32),
    order_purchase_timestamp     DATETIME,
    order_approved_at            DATETIME,
    order_delivered_carrier_date DATETIME,
    order_delivered_customer_date DATETIME,
    order_estimated_delivery_date DATETIME,
    CONSTRAINT fk_order_customer
        FOREIGN KEY (customer_id)
        REFERENCES olist_customers (customer_id)
);

/* 6. Itens do pedido */
CREATE TABLE olist_order_items (
    order_id          CHAR(32) NOT NULL,
    order_item_id     INT NOT NULL,
    product_id        CHAR(32) NOT NULL,
    seller_id         CHAR(32) NOT NULL,
    shipping_limit_date DATETIME,
    price             DECIMAL(10,2),
    freight_value     DECIMAL(10,2),
    PRIMARY KEY (order_id, order_item_id),
    CONSTRAINT fk_items_order
        FOREIGN KEY (order_id)  REFERENCES olist_orders(order_id),
    CONSTRAINT fk_items_product
        FOREIGN KEY (product_id) REFERENCES olist_products(product_id),
    CONSTRAINT fk_items_seller
        FOREIGN KEY (seller_id)  REFERENCES olist_sellers(seller_id)
);

/* 7. Pagamentos */
CREATE TABLE olist_order_payments (
    order_id           CHAR(32) NOT NULL,
    payment_sequential INT NOT NULL,
    payment_type       VARCHAR(32),
    payment_installments INT,
    payment_value      DECIMAL(10,2),
    PRIMARY KEY (order_id, payment_sequential),
    CONSTRAINT fk_pay_order
        FOREIGN KEY (order_id) REFERENCES olist_orders(order_id)
);

/* 8. Reviews */
CREATE TABLE olist_order_reviews (
    review_id              CHAR(32),
    order_id               CHAR(32) NOT NULL,
    review_score           INT,
    review_comment_title   TEXT,
    review_comment_message TEXT,
    review_creation_date   DATETIME,
    review_answer_timestamp DATETIME,
    CONSTRAINT fk_review_order
        FOREIGN KEY (order_id) REFERENCES olist_orders(order_id)
);

