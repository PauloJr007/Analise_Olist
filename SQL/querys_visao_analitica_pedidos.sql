-- Panorama dos Status dos Pedidos + Sazonalidade dos Pedidos ao Longo do Tempo + Sazonalidade dos Pedidos Cancelados por Mês
SELECT 
    DATE(order_purchase_timestamp) AS data_compra,
    order_status, -- Panorama Status dos Pedidos
    COUNT(*) AS numero_pedidos
FROM olist_db.olist_orders
GROUP BY data_compra, order_status
ORDER BY data_compra;

-- Top 10 Dias com Mais Pedidos
SELECT 
    order_purchase_timestamp AS dia,
    COUNT(*) AS total_pedidos
FROM olist_db.olist_orders
GROUP BY order_purchase_timestamp
ORDER BY total_pedidos DESC
LIMIT 10;
