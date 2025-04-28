-- Daily Order Fill Rate
SELECT 
    order_date,
    COUNT(order_id) AS total_orders,
    SUM(CASE WHEN status = 'Filled' THEN 1 ELSE 0 END) AS filled_orders,
    ROUND(SUM(CASE WHEN status = 'Filled' THEN 1 ELSE 0 END) * 100.0 / COUNT(order_id), 2) AS fill_rate_percentage
FROM warehouse_orders
GROUP BY order_date
ORDER BY order_date DESC;

-- Stock Movement Summary
SELECT 
    product_id,
    product_name,
    SUM(quantity_moved) AS total_units_moved
FROM stock_movements
WHERE movement_date BETWEEN DATEADD(DAY, -30, GETDATE()) AND GETDATE()
GROUP BY product_id, product_name
ORDER BY total_units_moved DESC;

-- Employee Order Performance
SELECT 
    employee_id,
    employee_name,
    COUNT(order_id) AS orders_handled,
    ROUND(AVG(processing_time_minutes), 2) AS avg_processing_time
FROM order_processing
GROUP BY employee_id, employee_name
ORDER BY orders_handled DESC;
