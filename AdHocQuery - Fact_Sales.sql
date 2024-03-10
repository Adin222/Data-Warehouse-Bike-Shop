SELECT
    d.year,
    d.quarter,
    p.brand_name,
    p.category_name,
    s.first_name + ' ' + s.last_name  staff_name,
    l.city  location_city,
    os.order_status_description,
    SUM(fs.quantity_sold)  total_quantity_sold,
    SUM(fs.total_amount)  total_sales_amount
FROM
    dw.fact_sales fs
JOIN
    dw.dim_date d ON fs.date_id = d.date_id
JOIN
    dw.dim_product p ON fs.product_id = p.product_id
JOIN
    dw.dim_staff s ON fs.staff_id = s.staff_id
JOIN
    dw.dim_location l ON fs.location_id = l.location_id
JOIN
    dw.dim_order_status os ON fs.order_status_id = os.order_status_id
WHERE
    os.order_status_description = 'Completed'
GROUP BY
    d.year,
    d.quarter,
    p.brand_name,
    p.category_name,
    s.first_name,
    s.last_name,
    l.city,
    os.order_status_description

