SELECT
    d.year,
    d.quarter,
    d.MonthName,
    p.product_name,
    l.store_name,
    SUM(fi.quantity_on_hand) AS total_quantity_on_hand
FROM
    dw.fact_inventory fi
JOIN
    dw.dim_date d ON fi.date_id = d.date_id
JOIN
    dw.dim_product p ON fi.product_id = p.product_id
JOIN
    dw.dim_location l ON fi.location_id = l.location_id
GROUP BY
    d.year,
    d.quarter,
    d.MonthName,
    p.product_name,
    l.store_name;
