CREATE SCHEMA dw;
GO

CREATE TABLE dw.dim_date (
    date_id INT PRIMARY KEY,
    full_date DATE,
    year INT,
    quarter INT,
    quarterID VARCHAR(10),
    MonthNum INT,
    MonthID VARCHAR(10),
    MonthName VARCHAR(20),
    DayOfMonth INT,
    DayOfWeek INT,
    DayName VARCHAR(20)
);

INSERT INTO dw.dim_date (date_id, full_date, year, quarter, quarterID, MonthNum, MonthID, MonthName, DayOfMonth, DayOfWeek, DayName)
VALUES 
     (20160101, '2016-01-01', 2016, 1, 'Q1', 1, 'Jan', 'January', 1, DATEPART(WEEKDAY, '2016-01-01'), 'Friday'),
    (20160215, '2016-02-15', 2016, 1, 'Q1', 2, 'Feb', 'February', 15, DATEPART(WEEKDAY,'2016-02-15'), 'Monday'),
    (20160323, '2016-03-23', 2016, 1, 'Q1', 3, 'Mar', 'March', 23, DATEPART(WEEKDAY,'2016-03-23'), 'Wednesday'),
    (20160410, '2016-04-10', 2016, 2, 'Q2', 4, 'Apr', 'April', 10, DATEPART(WEEKDAY,'2016-04-10'), 'Sunday'),
    (20160527, '2016-05-27', 2016, 2, 'Q2', 5, 'May', 'May', 27, DATEPART(WEEKDAY,'2016-05-27'), 'Friday'),
    (20160608, '2016-06-08', 2016, 2, 'Q2', 6, 'Jun', 'June', 8, DATEPART(WEEKDAY,'2016-06-08'), 'Wednesday'),
    (20160714, '2016-07-14', 2016, 3, 'Q3', 7, 'Jul', 'July', 14, DATEPART(WEEKDAY,'2016-07-14'), 'Thursday'),
    (20160821, '2016-08-21', 2016, 3, 'Q3', 8, 'Aug', 'August', 21, DATEPART(WEEKDAY,'2016-08-21'), 'Sunday'),
    (20160905, '2016-09-05', 2016, 3, 'Q3', 9, 'Sep', 'September', 5, DATEPART(WEEKDAY,'2016-09-05'), 'Monday'),
    (20161019, '2016-10-19', 2016, 4, 'Q4', 10, 'Oct', 'October', 19, DATEPART(WEEKDAY,'2016-10-19'), 'Wednesday'),
    (20161103, '2016-11-03', 2016, 4, 'Q4', 11, 'Nov', 'November', 3, DATEPART(WEEKDAY,'2016-11-03'), 'Thursday'),
    (20161212, '2016-12-12', 2016, 4, 'Q4', 12, 'Dec', 'December', 12, DATEPART(WEEKDAY,'2016-12-12'), 'Monday'),
    (20160814, '2016-01-14', 2016, 1, 'Q1', 1, 'Jan', 'January', 14, DATEPART(WEEKDAY,'2016-01-14'), 'Thursday'),
    (20160302, '2016-03-02', 2016, 1, 'Q1', 3, 'Mar', 'March', 2, DATEPART(WEEKDAY,'2016-03-02'), 'Wednesday'),
    (20160420, '2016-04-20', 2016, 2, 'Q2', 4, 'Apr', 'April', 20, DATEPART(WEEKDAY,'2016-04-20'), 'Wednesday'),
    (20160511, '2016-05-11', 2016, 2, 'Q2', 5, 'May', 'May', 11, DATEPART(WEEKDAY,'2016-05-11'), 'Wednesday'),
    (20160625, '2016-06-25', 2016, 2, 'Q2', 6, 'Jun', 'June', 25, DATEPART(WEEKDAY,'2016-06-25'), 'Saturday'),
    (20160807, '2016-08-07', 2016, 3, 'Q3', 8, 'Aug', 'August', 7, DATEPART(WEEKDAY,'2016-08-07'), 'Sunday'),
    (20160916, '2016-09-16', 2016, 3, 'Q3', 9, 'Sep', 'September', 16, DATEPART(WEEKDAY,'2016-09-16'), 'Friday'),
    (20161031, '2016-10-31', 2016, 4, 'Q4', 10, 'Oct', 'October', 31, DATEPART(WEEKDAY,'2016-10-31'), 'Monday'),
    (20161118, '2016-11-18', 2016, 4, 'Q4', 11, 'Nov', 'November', 18, DATEPART(WEEKDAY,'2016-11-18'), 'Friday'),
    (20161204, '2016-12-04', 2016, 4, 'Q4', 12, 'Dec', 'December', 4, DATEPART(WEEKDAY,'2016-12-04'), 'Sunday'),
    (20160910, '2016-09-10', 2016, 3, 'Q3', 9, 'Sep', 'September', 10, DATEPART(WEEKDAY,'2016-09-10'), 'Saturday'),
    (20161005, '2016-10-05', 2016, 4, 'Q4', 10, 'Oct', 'October', 5, DATEPART(WEEKDAY,'2016-10-05'), 'Wednesday'),
    (20161120, '2016-11-20', 2016, 4, 'Q4', 11, 'Nov', 'November', 20, DATEPART(WEEKDAY,'2016-11-20'), 'Sunday'),
    (20161207, '2016-12-07', 2016, 4, 'Q4', 12, 'Dec', 'December', 7, DATEPART(WEEKDAY,'2016-12-07'), 'Wednesday'),
    (20160615, '2016-06-15', 2016, 2, 'Q2', 6, 'Jun', 'June', 15, DATEPART(WEEKDAY,'2016-06-15'), 'Wednesday'),
    (20160502, '2016-05-02', 2016, 2, 'Q2', 5, 'May', 'May', 2, DATEPART(WEEKDAY,'2016-05-02'), 'Monday'),
    (20160311, '2016-03-11', 2016, 1, 'Q1', 3, 'Mar', 'March', 11, DATEPART(WEEKDAY,'2016-03-11'), 'Friday'),
    (20160228, '2016-02-28', 2016, 1, 'Q1', 2, 'Feb', 'February', 28, DATEPART(WEEKDAY,'2016-02-28'), 'Sunday'),
    (20160423, '2016-04-23', 2016, 2, 'Q2', 4, 'Apr', 'April', 23, DATEPART(WEEKDAY,'2016-04-23'), 'Saturday'),
    (20160114, '2016-01-14', 2016, 1, 'Q1', 1, 'Jan', 'January', 14, DATEPART(WEEKDAY,'2016-01-14'), 'Thursday'),
    (20170103, '2017-01-03', 2017, 1, 'Q1', 1, 'Jan', 'January', 3, DATEPART(WEEKDAY,'2017-01-03'), 'Tuesday'),
    (20170212, '2017-02-12', 2017, 1, 'Q1', 2, 'Feb', 'February', 12, DATEPART(WEEKDAY,'2017-02-12'), 'Sunday'),
    (20170321, '2017-03-21', 2017, 1, 'Q1', 3, 'Mar', 'March', 21, DATEPART(WEEKDAY,'2017-03-21'), 'Tuesday'),
    (20170408, '2017-04-08', 2017, 2, 'Q2', 4, 'Apr', 'April', 8, DATEPART(WEEKDAY,'2017-04-08'), 'Saturday'),
    (20170517, '2017-05-17', 2017, 2, 'Q2', 5, 'May', 'May', 17, DATEPART(WEEKDAY,'2017-05-17'), 'Wednesday'),
    (20170629, '2017-06-29', 2017, 2, 'Q2', 6, 'Jun', 'June', 29, DATEPART(WEEKDAY,'2017-06-29'), 'Thursday'),
    (20170704, '2017-07-04', 2017, 3, 'Q3', 7, 'Jul', 'July', 4, DATEPART(WEEKDAY,'2017-07-04'), 'Tuesday'),
    (20170811, '2017-08-11', 2017, 3, 'Q3', 8, 'Aug', 'August', 11, DATEPART(WEEKDAY,'2017-08-11'), 'Friday'),
    (20170922, '2017-09-22', 2017, 3, 'Q3', 9, 'Sep', 'September', 22, DATEPART(WEEKDAY,'2017-09-22'), 'Friday'),
    (20171015, '2017-10-15', 2017, 4, 'Q4', 10, 'Oct', 'October', 15, DATEPART(WEEKDAY,'2017-10-15'), 'Sunday'),
    (20171128, '2017-11-28', 2017, 4, 'Q4', 11, 'Nov', 'November', 28, DATEPART(WEEKDAY,'2017-11-28'), 'Tuesday'),
    (20171209, '2017-12-09', 2017, 4, 'Q4', 12, 'Dec', 'December', 9, DATEPART(WEEKDAY,'2017-12-09'), 'Saturday'),
    (20170119, '2017-01-19', 2017, 1, 'Q1', 1, 'Jan', 'January', 19, DATEPART(WEEKDAY,'2017-01-19'), 'Thursday'),
    (20170227, '2017-02-27', 2017, 1, 'Q1', 2, 'Feb', 'February', 27, DATEPART(WEEKDAY,'2017-02-27'), 'Monday'),
    (20170308, '2017-03-08', 2017, 1, 'Q1', 3, 'Mar', 'March', 8, DATEPART(WEEKDAY,'2017-03-08'), 'Wednesday'),
    (20170414, '2017-04-14', 2017, 2, 'Q2', 4, 'Apr', 'April', 14, DATEPART(WEEKDAY,'2017-04-14'), 'Friday'),
    (20170526, '2017-05-26', 2017, 2, 'Q2', 5, 'May', 'May', 26, DATEPART(WEEKDAY,'2017-05-26'), 'Friday'),
    (20170605, '2017-06-05', 2017, 2, 'Q2', 6, 'Jun', 'June', 5, DATEPART(WEEKDAY,'2017-06-05'), 'Monday'),
    (20170719, '2017-07-19', 2017, 3, 'Q3', 7, 'Jul', 'July', 19, DATEPART(WEEKDAY,'2017-07-19'), 'Wednesday'),
    (20170802, '2017-08-02', 2017, 3, 'Q3', 8, 'Aug', 'August', 2, DATEPART(WEEKDAY,'2017-08-02'), 'Wednesday'),
    (20170910, '2017-09-10', 2017, 3, 'Q3', 9, 'Sep', 'September', 10, DATEPART(WEEKDAY,'2017-09-10'), 'Sunday'),
    (20171024, '2017-10-24', 2017, 4, 'Q4', 10, 'Oct', 'October', 24, DATEPART(WEEKDAY,'2017-10-24'), 'Tuesday'),
    (20171115, '2017-11-15', 2017, 4, 'Q4', 11, 'Nov', 'November', 15, DATEPART(WEEKDAY,'2017-11-15'), 'Wednesday'),
    (20171230, '2017-12-30', 2017, 4, 'Q4', 12, 'Dec', 'December', 30, DATEPART(WEEKDAY,'2017-12-30'), 'Saturday'),
    (20171201, '2017-12-01', 2017, 4, 'Q4', 12, 'Dec', 'December', 1, DATEPART(WEEKDAY,'2017-12-01'), 'Friday'),
    (20170610, '2017-06-10', 2017, 2, 'Q2', 6, 'Jun', 'June', 10, DATEPART(WEEKDAY,'2017-06-10'), 'Saturday'),
    (20170430, '2017-04-30', 2017, 2, 'Q2', 4, 'Apr', 'April', 30, DATEPART(WEEKDAY,'2017-04-30'), 'Sunday'),
    (20170314, '2017-03-14', 2017, 1, 'Q1', 3, 'Mar', 'March', 14, DATEPART(WEEKDAY,'2017-03-14'), 'Tuesday'),
    (20170125, '2017-01-25', 2017, 1, 'Q1', 1, 'Jan', 'January', 25, DATEPART(WEEKDAY,'2017-01-25'), 'Wednesday'),
    (20170211, '2017-02-11', 2017, 1, 'Q1', 2, 'Feb', 'February', 11, DATEPART(WEEKDAY,'2017-02-11'), 'Saturday'),
    (20171018, '2017-10-18', 2017, 4, 'Q4', 10, 'Oct', 'October', 18, DATEPART(WEEKDAY,'2017-10-18'), 'Wednesday'),
    (20170827, '2017-08-27', 2017, 3, 'Q3', 8, 'Aug', 'August', 27, DATEPART(WEEKDAY,'2017-08-27'), 'Sunday'),
    (20170919, '2017-09-19', 2017, 3, 'Q3', 9, 'Sep', 'September', 19, DATEPART(WEEKDAY,'2017-09-19'), 'Tuesday'),
    (20171103, '2017-11-03', 2017, 4, 'Q4', 11, 'Nov', 'November', 3, DATEPART(WEEKDAY,'2017-11-03'), 'Friday'),
    (20180105, '2018-01-05', 2018, 1, 'Q1', 1, 'Jan', 'January', 5, DATEPART(WEEKDAY,'2018-01-05'), 'Friday'),
    (20180214, '2018-02-14', 2018, 1, 'Q1', 2, 'Feb', 'February', 14, DATEPART(WEEKDAY,'2018-02-14'), 'Wednesday'),
    (20180323, '2018-03-23', 2018, 1, 'Q1', 3, 'Mar', 'March', 23, DATEPART(WEEKDAY,'2018-03-23'), 'Friday'),
    (20180410, '2018-04-10', 2018, 2, 'Q2', 4, 'Apr', 'April', 10, DATEPART(WEEKDAY,'2018-04-10'), 'Tuesday'),
    (20180517, '2018-05-17', 2018, 2, 'Q2', 5, 'May', 'May', 17, DATEPART(WEEKDAY,'2018-05-17'), 'Thursday'),
    (20180629, '2018-06-29', 2018, 2, 'Q2', 6, 'Jun', 'June', 29, DATEPART(WEEKDAY,'2018-06-29'), 'Friday'),
    (20180704, '2018-07-04', 2018, 3, 'Q3', 7, 'Jul', 'July', 4, DATEPART(WEEKDAY,'2018-07-04'), 'Wednesday'),
    (20180811, '2018-08-11', 2018, 3, 'Q3', 8, 'Aug', 'August', 11, DATEPART(WEEKDAY,'2018-08-11'), 'Saturday'),
    (20180922, '2018-09-22', 2018, 3, 'Q3', 9, 'Sep', 'September', 22, DATEPART(WEEKDAY,'2018-09-22'), 'Saturday'),
    (20181015, '2018-10-15', 2018, 4, 'Q4', 10, 'Oct', 'October', 15, DATEPART(WEEKDAY,'2018-10-15'), 'Monday'),
    (20181128, '2018-11-28', 2018, 4, 'Q4', 11, 'Nov', 'November', 28, DATEPART(WEEKDAY,'2018-11-28'), 'Wednesday'),
    (20181209, '2018-12-09', 2018, 4, 'Q4', 12, 'Dec', 'December', 9, DATEPART(WEEKDAY,'2018-12-09'), 'Sunday'),
    (20180119, '2018-01-19', 2018, 1, 'Q1', 1, 'Jan', 'January', 19, DATEPART(WEEKDAY,'2018-01-19'), 'Friday'),
    (20180227, '2018-02-27', 2018, 1, 'Q1', 2, 'Feb', 'February', 27, DATEPART(WEEKDAY,'2018-02-27'), 'Tuesday'),
    (20180308, '2018-03-08', 2018, 1, 'Q1', 3, 'Mar', 'March', 8, DATEPART(WEEKDAY,'2018-03-08'), 'Thursday'),
    (20180414, '2018-04-14', 2018, 2, 'Q2', 4, 'Apr', 'April', 14, DATEPART(WEEKDAY,'2018-04-14'), 'Saturday'),
    (20180526, '2018-05-26', 2018, 2, 'Q2', 5, 'May', 'May', 26, DATEPART(WEEKDAY,'2018-05-26'), 'Saturday'),
    (20180605, '2018-06-05', 2018, 2, 'Q2', 6, 'Jun', 'June', 5, DATEPART(WEEKDAY,'2018-06-05'), 'Tuesday'),
    (20180719, '2018-07-19', 2018, 3, 'Q3', 7, 'Jul', 'July', 19, DATEPART(WEEKDAY,'2018-07-19'), 'Thursday'),
    (20180802, '2018-08-02', 2018, 3, 'Q3', 8, 'Aug', 'August', 2, DATEPART(WEEKDAY,'2018-08-02'), 'Thursday'),
    (20180910, '2018-09-10', 2018, 3, 'Q3', 9, 'Sep', 'September', 10, DATEPART(WEEKDAY,'2018-09-10'), 'Monday'),
    (20181024, '2018-10-24', 2018, 4, 'Q4', 10, 'Oct', 'October', 24, DATEPART(WEEKDAY,'2018-10-24'), 'Wednesday'),
    (20181115, '2018-11-15', 2018, 4, 'Q4', 11, 'Nov', 'November', 15, DATEPART(WEEKDAY,'2018-11-15'), 'Thursday'),
    (20181230, '2018-12-30', 2018, 4, 'Q4', 12, 'Dec', 'December', 30, DATEPART(WEEKDAY,'2018-12-30'), 'Sunday'),
    (20181109, '2018-11-09', 2018, 4, 'Q4', 11, 'Nov', 'November', 9, DATEPART(WEEKDAY,'2018-11-09'), 'Friday'),
    (20180222, '2018-02-22', 2018, 1, 'Q1', 2, 'Feb', 'February', 22, DATEPART(WEEKDAY,'2018-02-22'), 'Thursday'),
    (20180405, '2018-04-05', 2018, 2, 'Q2', 4, 'Apr', 'April', 5, DATEPART(WEEKDAY,'2018-04-05'), 'Thursday'),
    (20180914, '2018-09-14', 2018, 3, 'Q3', 9, 'Sep', 'September', 14, DATEPART(WEEKDAY,'2018-09-14'), 'Friday'),
    (20180626, '2018-06-26', 2018, 2, 'Q2', 6, 'Jun', 'June', 26, DATEPART(WEEKDAY,'2018-06-26'), 'Tuesday'),
    (20180312, '2018-03-12', 2018, 1, 'Q1', 3, 'Mar', 'March', 12, DATEPART(WEEKDAY,'2018-03-12'), 'Monday'),
    (20180107, '2018-01-07', 2018, 1, 'Q1', 1, 'Jan', 'January', 7, DATEPART(WEEKDAY,'2018-01-07'), 'Sunday'),
    (20180720, '2018-07-20', 2018, 3, 'Q3', 7, 'Jul', 'July', 20, DATEPART(WEEKDAY,'2018-07-20'), 'Friday'),
    (20181003, '2018-10-03', 2018, 4, 'Q4', 10, 'Oct', 'October', 3, DATEPART(WEEKDAY,'2018-10-03'), 'Wednesday'),
    (20181217, '2018-12-17', 2018, 4, 'Q4', 12, 'Dec', 'December', 17, DATEPART(WEEKDAY,'2018-12-17'), 'Monday');

CREATE TABLE dw.dim_customer (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    phone VARCHAR(25),
    email VARCHAR(255) NOT NULL,
    street VARCHAR(255),
    city VARCHAR(50),
    state VARCHAR(25),
    zip_code VARCHAR(5)
);


CREATE TABLE dw.dim_product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    brand_name VARCHAR(255) NOT NULL,
    category_name VARCHAR(255) NOT NULL,
    model_year SMALLINT NOT NULL,
    list_price DECIMAL(10, 2) NOT NULL
);


CREATE TABLE dw.dim_staff (
    staff_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone VARCHAR(25),
    active TINYINT NOT NULL,
    store_id INT NOT NULL,
    manager_id INT
);


CREATE TABLE dw.dim_location (
    location_id INT IDENTITY (1, 1) PRIMARY KEY,
    store_id INT,
    store_name VARCHAR(255) NOT NULL,
    street VARCHAR(255),
    city VARCHAR(255),
    state VARCHAR(10),
    zip_code VARCHAR(5)
);


CREATE TABLE dw.dim_order_status (
    order_status_id INT IDENTITY (1, 1) PRIMARY KEY,
    order_status_description VARCHAR(255) NOT NULL
);


INSERT INTO dw.dim_order_status
VALUES ('Pending'), ('Processing'), ('Rejected'), ('Completed');


CREATE TABLE dw.fact_sales (
    date_id INT,
    customer_id INT,
    product_id INT,
    staff_id INT,
    order_status_id INT,
    location_id INT,
    quantity_sold INT,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (date_id) REFERENCES dw.dim_date(date_id),
    FOREIGN KEY (customer_id) REFERENCES dw.dim_customer(customer_id),
    FOREIGN KEY (product_id) REFERENCES dw.dim_product(product_id),
    FOREIGN KEY (staff_id) REFERENCES dw.dim_staff(staff_id),
    FOREIGN KEY (location_id) REFERENCES dw.dim_location(location_id),
    FOREIGN KEY (order_status_id) REFERENCES dw.dim_order_status(order_status_id)
);


CREATE TABLE dw.fact_inventory (
    date_id INT,
    product_id INT,
    location_id INT,
    quantity_on_hand INT,
    FOREIGN KEY (date_id) REFERENCES dw.dim_date(date_id),
    FOREIGN KEY (product_id) REFERENCES dw.dim_product(product_id),
    FOREIGN KEY (location_id) REFERENCES dw.dim_location(location_id)
);


INSERT INTO dw.dim_customer (customer_id, first_name, last_name, phone, email, street, city, state, zip_code)
SELECT DISTINCT
    customer_id,
    first_name,
    last_name,
    phone,
    email,
    street,
    city,
    state,
    zip_code
FROM StartingDB.sales.customers;


INSERT INTO dw.dim_product (product_id, product_name, brand_name, category_name, model_year, list_price)
SELECT DISTINCT
    p.product_id,
    p.product_name,
    b.brand_name,
    c.category_name,
    p.model_year,
    p.list_price
FROM StartingDB.production.products p
JOIN StartingDB.production.brands b ON p.brand_id = b.brand_id
JOIN StartingDB.production.categories c ON p.category_id = c.category_id;


INSERT INTO dw.dim_staff (staff_id, first_name, last_name, email, phone, active, store_id, manager_id)
SELECT DISTINCT
    staff_id,
    first_name,
    last_name,
    email,
    phone,
    active,
    store_id,
    manager_id
FROM StartingDB.sales.staffs;


INSERT INTO dw.dim_location (store_id, store_name, street, city, state, zip_code)
SELECT DISTINCT
    store_id,
    store_name,
    street,
    city,
    state,
    zip_code
FROM StartingDB.sales.stores;


INSERT INTO dw.fact_sales (date_id, customer_id, product_id, staff_id, order_status_id, location_id, quantity_sold, total_amount)
SELECT
    d.date_id,
    o.customer_id,
    oi.product_id,
    o.staff_id,
    os.order_status_id,
    lc.location_id,
    oi.quantity,
    oi.list_price * oi.quantity * (1 - oi.discount) AS total_amount
FROM StartingDB.sales.orders o 
JOIN StartingDB.sales.order_items oi ON o.order_id = oi.order_id
JOIN dw.dim_date d ON o.order_date = d.full_date
JOIN dw.dim_order_status os ON o.order_status = os.order_status_id
JOIN dw.dim_location lc ON o.store_id = lc.store_id;


INSERT INTO dw.fact_inventory (date_id, product_id, location_id, quantity_on_hand)
SELECT
    d.date_id,
    ps.product_id,
    ps.store_id,
    ps.quantity
FROM StartingDB.production.stocks ps
JOIN StartingDB.sales.orders o ON ps.product_id = o.order_id 
JOIN dw.dim_date d ON o.order_date = d.full_date;
