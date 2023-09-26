/* Rata-rata umur customer jika dilihat dari marital statusnya*/
SELECT marital_status, AVG(age) AS rata_rata_umur
FROM customer
GROUP BY marital_status;


/* Rata-rata umur customer jika dilihat dari gender nya*/
SELECT gender, AVG(age) AS rata_rata_umur
FROM customer
GROUP BY gender;


/* Nama store dengan total quantity terbanyak*/
SELECT
    s.store_name,
    SUM(t.qty) AS total_quantity
FROM
    store s 
JOIN
    "transaction" t 
    ON s.store_id = t.store_id
GROUP BY
    s.store_name
ORDER BY
    total_quantity DESC
LIMIT 1;


/* Nama produk terlaris dengan total amount terbanyak*/
SELECT
    p.product_name,
    SUM(t.total_amount) AS total_amount
FROM
    product p 
JOIN
    "transaction" t 
    ON p.product_id = t.product_id
GROUP BY
    p.product_name
ORDER BY
    total_amount DESC
LIMIT 1;





