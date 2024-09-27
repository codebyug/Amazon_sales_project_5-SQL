

-- SQL B 06 Day 01

CREATE TABLE orders(
                    order_id VARCHAR(10),	
                    order_date date,	
                    customer_id VARCHAR(10),	
                    state VARCHAR(25),	
                    category VARCHAR(25),	
                    sub_category VARCHAR(25),	
                    product_id VARCHAR(10),	
                    price_per_unit FLOAT,	
                    quantity INT,	
                    sale FLOAT,	
                    seller_id VARCHAR(5)
                    );  

CREATE TABLE payments
	(
	Payment_id int Primary key,
	order_id VARCHAR(10),---- FK
	payment_date DATE,
	payment_status varchar(25),
	constraint payments_fk_orders FOREIGN KEY(order_id) references orders(order_id)
	);

INSERT INTO payments(payment_id,order_id,payment_date,payment_status)
	values(1, 1032, '2023-08-10', 'payment succeeded'),
(2, 1724, '2023-04-12', 'payment failed'),
(3, 1429, '2023-10-25', 'payment succeeded'),
(4, 846, '2024-02-15', 'payment succeeded'),
(5, 1953, '2023-11-18', 'payment failed');
INSERT INTO payments(payment_id,order_id,payment_date,payment_status)
	values(6, 193, '2023-09-09', 'payment succeeded'),
(7, 1025, '2023-06-13', 'payment failed'),
(8, 1359, '2024-01-02', 'payment succeeded'),
(9, 832, '2023-12-19', 'payment failed'),
(10, 468, '2024-03-01', 'payment succeeded'),
(11, 1457, '2023-10-08', 'payment succeeded'),
(12, 1971, '2024-05-20', 'payment failed'),
(13, 526, '2023-03-30', 'payment succeeded'),
(14, 1134, '2023-07-11', 'payment succeeded'),
(15, 651, '2023-08-22', 'payment failed'),
(16, 1125, '2023-06-05', 'payment succeeded'),
(17, 1678, '2024-02-09', 'payment failed'),
(18, 312, '2024-01-15', 'payment succeeded'),
(19, 1812, '2023-09-29', 'payment succeeded'),
(20, 1576, '2023-11-23', 'payment failed'),
(21, 718, '2023-12-01', 'payment succeeded'),
(22, 1544, '2023-04-17', 'payment failed'),
(23, 599, '2024-03-11', 'payment succeeded'),
(24, 1039, '2023-05-05', 'payment succeeded'),
(25, 1823, '2023-09-14', 'payment failed'),
(26, 1215, '2024-02-26', 'payment succeeded'),
(27, 1302, '2024-05-04', 'payment failed'),
(28, 490, '2023-07-26', 'payment succeeded'),
(29, 1647, '2023-06-02', 'payment succeeded'),
(30, 921, '2023-08-30', 'payment failed'),
(31, 1022, '2024-01-19', 'payment succeeded'),
(32, 1408, '2023-10-03', 'payment failed'),
(33, 1759, '2023-11-30', 'payment succeeded'),
(34, 198, '2023-09-21', 'payment succeeded'),
(35, 1837, '2023-07-17', 'payment failed'),
(36, 904, '2024-03-20', 'payment succeeded'),
(37, 1598, '2023-12-14', 'payment failed'),
(38, 622, '2024-02-07', 'payment succeeded'),
(39, 1250, '2023-06-28', 'payment succeeded'),
(40, 1158, '2023-11-07', 'payment failed'),
(41, 1754, '2024-04-15', 'payment succeeded'),
(42, 135, '2023-05-25', 'payment failed'),
(43, 1460, '2024-01-10', 'payment succeeded'),
(44, 621, '2023-10-20', 'payment succeeded'),
(45, 1689, '2023-09-01', 'payment failed'),
(46, 1475, '2023-12-05', 'payment succeeded'),
(47, 213, '2023-04-23', 'payment succeeded'),
(48, 1870, '2023-07-14', 'payment failed'),
(49, 1259, '2024-03-06', 'payment succeeded'),
(50, 894, '2023-10-29', 'payment failed');
	select * from payments;
DROP TABLE orders;
drop table if exists inventory;
create table inventory(
	inventory_id int primary key,
	product_id varchar(25),
	stock int,
	warehouse_id int,
	last_stock_date date,
     constraint inventory_fk_products foreign key(product_id) references products(product_id)
	
);

insert into inventory(inventory_id,product_id,stock,warehouse_id,last_stock_date)
	values(1, 'P10', 53, 1, '2023-01-15'),
(2, 'P21', 26, 1, '2023-02-08'),
(3, 'P23', 74, 1, '2023-03-20'),
(4, 'P100', 34, 1, '2023-04-14'),
(5, 'P256', 62, 1, '2023-05-30');
insert into inventory(inventory_id,product_id,stock,warehouse_id,last_stock_date)
	values
(6, 'P500', 89, 1, '2023-06-22'),
(7, 'P234', 45, 1, '2023-07-19'),
(8, 'P876', 12, 1, '2023-08-11'),
(9, 'P745', 99, 1, '2023-09-03'),
(10, 'P431', 78, 1, '2023-10-17'),
(11, 'P213', 27, 1, '2023-11-08'),
(12, 'P621', 54, 1, '2023-12-05'),
(13, 'P745', 13, 1, '2023-01-24'),
(14, 'P1000', 69, 1, '2023-02-18'),
(15, 'P890', 33, 1, '2023-03-12'),
(16, 'P723', 56, 1, '2023-04-28'),
(17, 'P555', 77, 1, '2023-05-10'),
(18, 'P123', 44, 1, '2023-06-04'),
(19, 'P456', 18, 1, '2023-07-14'),
(20, 'P632', 35, 1, '2023-08-19'),
(21, 'P98', 64, 1, '2023-09-21'),
(22, 'P354', 87, 1, '2023-10-13'),
(23, 'P767', 12, 1, '2023-11-25'),
(24, 'P523', 24, 1, '2023-12-18'),
(25, 'P834', 72, 1, '2023-01-07'),
(26, 'P644', 91, 1, '2023-02-14'),
(27, 'P110', 56, 1, '2023-03-11'),
(28, 'P763', 35, 1, '2023-04-22'),
(29, 'P220', 68, 1, '2023-05-16'),
(30, 'P321', 14, 1, '2023-06-30'),
(31, 'P999', 37, 1, '2023-07-28'),
(32, 'P412', 88, 1, '2023-08-21'),
(33, 'P231', 93, 1, '2023-09-18'),
(34, 'P842', 41, 1, '2023-10-27'),
(35, 'P754', 60, 1, '2023-11-30'),
(36, 'P178', 16, 1, '2023-12-15'),
(37, 'P231', 38, 1, '2023-01-29'),
(38, 'P456', 84, 1, '2023-02-19'),
(39, 'P333', 42, 1, '2023-03-04'),
(40, 'P876', 29, 1, '2023-04-12'),
(41, 'P411', 79, 1, '2023-05-20'),
(42, 'P647', 25, 1, '2023-06-14'),
(43, 'P523', 57, 1, '2023-07-05'),
(44, 'P102', 90, 1, '2023-08-17'),
(45, 'P789', 30, 1, '2023-09-22'),
(46, 'P159', 83, 1, '2023-10-09'),
(47, 'P234', 49, 1, '2023-11-02'),
(48, 'P501', 61, 1, '2023-12-20'),
(49, 'P753', 74, 1, '2023-01-08'),
(50, 'P356', 21, 1, '2023-02-12');

create table shipments(
	shipping_id int primary key,
	order_id varchar(25), --- fk
	shipping_date date,
	return_date date,
	shipping_providers varchar(15),
	delivery_status varchar(15),
	constraint shipments_fk_orders foreign key(order_id) references orders(order_id)
);


 insert into shipments( shipping_id,order_id,shipping_date,return_date,shipping_providers,delivery_status)
	 values(123, 567, '2023-01-15', '2023-01-25', 'bluedart', 'returned'),
(245, 632, '2023-02-07', NULL, 'dhl', 'delivered'),
(789, 789, '2023-03-05', '2023-03-20', 'fedex', 'returned'),
(456, 874, '2023-04-12', NULL, 'bluedart', 'delivered');
insert into shipments( shipping_id,order_id,shipping_date,return_date,shipping_providers,delivery_status)
	 values
(132, 976, '2023-05-01', '2023-05-11', 'dhl', 'returned'),
(1432, 1150, '2023-06-21', NULL, 'fedex', 'delivered'),
(589, 1324, '2023-07-13', '2023-07-28', 'bluedart', 'returned'),
(982, 1450, '2023-08-19', NULL, 'dhl', 'delivered'),
(311, 1327, '2023-09-01', '2023-09-17', 'fedex', 'returned'),
(634, 1500, '2023-10-05', NULL, 'bluedart', 'delivered'),
(598, 1698, '2023-11-02', '2023-11-10', 'dhl', 'returned'),
(1289, 1732, '2023-12-22', NULL, 'fedex', 'delivered'),
(705, 1801, '2023-01-30', '2023-02-09', 'bluedart', 'returned'),
(1356, 1850, '2023-02-12', NULL, 'dhl', 'delivered'),
(458, 1905, '2023-03-15', '2023-03-25', 'fedex', 'returned'),
(923, 1934, '2023-04-01', NULL, 'bluedart', 'delivered'),
(613, 1987, '2023-05-13', '2023-05-21', 'dhl', 'returned'),
(1145, 1995, '2023-06-25', NULL, 'fedex', 'delivered'),
(1398, 2000, '2023-07-18', '2023-07-28', 'bluedart', 'returned'),
(342, 1501, '2023-08-22', NULL, 'dhl', 'delivered');
insert into shipments( shipping_id,order_id,shipping_date,return_date,shipping_providers,delivery_status)
	 values
(562, 1002, '2023-09-19', '2023-09-29', 'fedex', 'returned'),
(641, 1056, '2023-10-03', NULL, 'bluedart', 'delivered'),
(1012, 1101, '2023-11-16', '2023-11-23', 'dhl', 'returned'),
(1115, 1156, '2023-12-10', NULL, 'fedex', 'delivered'),
(749, 1203, '2023-01-20', '2023-01-30', 'bluedart', 'returned'),

(1189, 1304, '2023-03-22', '2023-04-01', 'fedex', 'returned'),
(1053, 1357, '2023-04-18', NULL, 'bluedart', 'delivered'),
(1378, 1425, '2023-05-06', '2023-05-15', 'dhl', 'returned'),
(469, 1480, '2023-06-28', NULL, 'fedex', 'delivered'),
(561, 1523, '2023-07-09', '2023-07-20', 'bluedart', 'returned'),
(690, 1576, '2023-08-11', NULL, 'dhl', 'delivered'),
(891, 1639, '2023-09-15', '2023-09-24', 'fedex', 'returned'),
(1204, 1685, '2023-10-25', NULL, 'bluedart', 'delivered'),

(1462, 1783, '2023-12-15', NULL, 'fedex', 'delivered'),
(1154, 1807, '2023-01-31', '2023-02-12', 'bluedart', 'returned'),
(1568, 1832, '2023-02-22', NULL, 'dhl', 'delivered'),
(1187, 1883, '2023-03-26', '2023-04-07', 'fedex', 'returned'),
(1301, 1968, '2023-05-18', '2023-05-28', 'dhl', 'returned'),
(1405, 1999, '2023-06-11', NULL, 'fedex', 'delivered'),
(1450, 1504, '2023-07-17', '2023-07-25', 'bluedart', 'returned'),
(987, 1543, '2023-08-22', NULL, 'dhl', 'delivered'),
(1202, 1602, '2023-09-03', '2023-09-12', 'fedex', 'returned'),
(1357, 1657, '2023-10-16', NULL, 'bluedart', 'delivered'),
(1458, 1708, '2023-11-29', '2023-12-09', 'dhl', 'returned'),
(1213, 1789, '2023-01-10', NULL, 'fedex', 'delivered'),
(1365, 1823, '2023-02-14', '2023-02-25', 'bluedart', 'returned'),
(1489, 1859, '2023-03-28', NULL, 'dhl', 'delivered'),
(1258, 1928, '2023-04-10', '2023-04-19', 'fedex', 'returned'),
(1497, 1982, '2023-05-20', NULL, 'bluedart', 'delivered');


SELECT     
    * -- select all columns
FROM orders;



SELECT     
    order_id,
    order_date,
    state,
    quantity,
    sale
FROM orders;

/*
What is the total revenue generated?
How many products do we have?
Find  out top 5 order details by sales amount?
What is the average order value?
What is the total sale for GOA?
How many unique customers have placed orders?
*/


--Q.1 What is the total revenue generated?

-- /SUM, COUNT, AVG, MIN, MAX

SELECT
    SUM(sale) as Total_sale
FROM orders;



SELECT
    AVG(sale) as avg_sale
FROM orders;



-- Q.2 How many products do we have?

SELECT 
    COUNT(product_id)
FROM orders;



SELECT 
    COUNT(DISTINCT product_id) as total_product
FROM orders
-- ORDER BY product_id 

-- Q.3 Find  out top 5 order details by sales amount?

SELECT * FROM orders
ORDER BY sale DESC
LIMIT 5

-- Buttom 5 sales
SELECT * FROM orders
ORDER BY sale ASC
LIMIT 5

-- How many orders we have ?

SELECT 
   COUNT(1) 
FROM orders


-- What is the total sale for GOA?
-- state
--  sale  
    
SELECT 
    SUM(sale)  as total_sale_goa
FROM orders
WHERE state = 'Goa'

-- Write SQL query to get the total sale for 'Goa' and 'Bihar'


SELECT 
    -- *
    SUM(sale)  as total_sale_goa
FROM orders
WHERE state = 'Goa'
    OR
    state = 'Bihar'


SELECT 
    *
    -- SUM(sale)  as total_sale_goa
FROM orders
WHERE 
    state = 'Goa'
    OR
    category = 'Technology'

-- Write SQL query to select all orders if the state is Goa, Kerala, Assam, Punjab

SELECT *
FROM orders
WHERE 
    state = 'Goa'
    OR
    state = 'Assam'
    OR
    state = 'Kerala'
    OR
    state = 'Punjab'



SELECT *
FROM orders
WHERE state IN ('Goa', 'Assam', 'Kerala', 'Punjab')


-- End of day 01 till break

-- continue after break

/*
-- business problem 2

Q.1 What is the total sales revenue generated by each state?
    
How many orders were placed by each customer, and what is their average order quantity?
Which category has the highest average sale amount per order?

Identify the top 3 best-selling products (sub-categories) in terms of total quantity sold.

Which is the best selling month in 2022 based on revenue?

Find top 3 products and revenue generated Having revenue > 30000

*/

-- GROUP BY
-- Q.1 What is the total sales revenue generated by each state?

SELECT
    state,
    SUM(sale)
FROM orders
GROUP BY state

-- Write SQl query to get each customer and their total sale and also get me total orders by each cx

SELECT 
    customer_id, -- 1
    SUM(sale) as total_sale,
    COUNT(order_id) as total_orders,
    AVG(quantity) as avg_qty
FROM orders
GROUP BY customer_id
HAVING COUNT(order_id) > 100


-- Identify the top 3 best-selling products (sub-categories) in terms of total quantity sold

SELECT 
     sub_category,
     product_id,       
     SUM(quantity) as qty_sold   
FROM orders
GROUP BY 1, 2
ORDER BY 1 ASC, qty_sold DESC
LIMIT 3


-- HAVING 

-- Find top 3 products and revenue generated Having revenue > 10000
-- each product_id and SUM(sale) by doing group by
-- filter pro id > 10k
--     
    
SELECT 
    product_id,
    SUM(sale) as total_revenue -- in this column --- this is where HAVING IS used
FROM orders    
GROUP BY product_id
HAVING SUM(sale) > 10000
ORDER BY 2 DESC
LIMIT 3


    
FROM 
-- JOIN 
-- WHERE 
-- GROUP BY
-- HAVING
ORDER BY 
LIMIT


SELECT
    state,
    SUM(sale)
FROM orders
WHERE state <> 'Assam'   
GROUP BY state
HAVING SUM(sale) > 50000


-- SQL JOINS
-- INNER JOIN
-- LEFT JOIN
-- RIGHT JOIN
-- FULL JOIN (OUTER JOIN)

-- -- Business Problem 3    
-- -- Q.1 Find customers name and total orders and total revenue
-- Identify all orders that have been returned, along with the details of the returns (if available). (LEFT JOIN)
-- Find all instances where products have been sold, returned, or both, along with the associated details. (FULL JOIN)


-- Q.1 Find customers name and total orders and total revenue

SELECT
    -- o.customer_id,
    c.customer_name,
    COUNT(o.order_id) as total_order,
    SUM(o.sale) as total_sale
FROM orders as o
INNER JOIN
customers as c
ON c.customer_id = o.customer_id    
GROUP BY o.customer_id
ORder by 2

SELECT
   * 
FROM orders 
INNER JOIN
customers
ON customers.customer_id = orders.customer_id 

SELECT * 
FROM orders as o
LEFT JOIN
returns as r
ON o.order_id = r.order_id    

SELECT * From returns
    

SELECT * 
FROM orders as o
RIGHT JOIN
returns as r
ON o.order_id = r.order_id    
    
-- SQL B-D2 Note 2

-- Write sql query to show all orders which are being returned!

SELECT * FROM orders
WHERE order_id IN(SELECT order_id FROM returns)

SELECT order_id FROM returns;

SELECT
*
FROM orders as o
LEFT JOIN
returns as r
ON o.order_id = r.order_id


-- bp 5

--Find Top 5 states by total orders where each state sale is greater than average orders accross orders.
    
--Find the details of the top 5 products with the highest total sales, where the total sale for each product is greater than the average sale across all products.

-- Get all those orders where sale amount is greater than average of accross sale value?

SELECT AVG(sale) FROm orders;

SELECT * FROM orders
WHERE sale > (SELECT AVG(sale) FROm orders);


-- Get me all the emp who has salary greater than the avg salary of the company

-- Q.1 Find Top 5 states by total orders where each state 
-- sale is greater than average orders accross orders.

-- total orders
-- total state
-- avg order for state 1/2 avg_order_per_state

-- Nested Subquery
SELECT 
    state, -- 1
    COUNT(*) as total_orders
FROM orders
WHERE state IS NOT NULL    
GROUP BY 1
HAVING  COUNT(*) > (SELECT COUNT(*)/(SELECT COUNT(DISTINCT state) FROM orders) FROM orders)
ORDER BY 2 DESc
    lIMIT 5

-- Get me 10 customers details who has spent more than average spent by all cx
-- return cx_name, total_spent

-- orders and cx table join INNER
group by cx id, cx name
SUM(sale)   
HAVING to filer those who cross avg spent by cx
total spent/total cx --



select 
    c.customer_id,
    c.customer_name,
    ROUND(Sum(o.sale)::numeric, 2) as Total_Sale --- you can
from orders o 
join customers c
on c.customer_id=o.customer_id    
group by c.customer_id, c.customer_name
having Sum(o.sale) > (select SUM(sale)/COUNT(DIStinct customer_id) from orders)
order by Total_Sale desc
limit 10;

-- Best selling month in 2021 from orders

select  
	extract(month from order_date)as months,
    To_char(order_date,'MON'),
   sum (sale) as Tot_sale from orders
group by 1,2
	having sum(sale)> (select avg(sale) from orders)
order by Tot_sale desc;


SELECT TO_CHAR(order_DATE, 'month') from orders  ;

-- string functions
--left,right
select left(category,5) as left from orders;
select right(category,5) from orders;
select concat(order_id,' ',category) as concatti from orders;
select 'hello world      ';
select replace('hello world', 'hello','heelo');

--Classify orders by quantity: Categorize orders as "Low," "Medium," or "High" based on the quantity ordered.


select 
	-- order_id,category,quantity,
	case 
	  when quantity>10 then 'high'
	 when quantity between 3 and 10 then 'medium'
     else 'low' end as qnt_status ,
	count(order_id) as Tot_orders from orders
	group by 1
	order by Tot_orders desc;
-- Categorize products by price range: Classify products as "Low," "Medium," or "High" based on their price.
    
select 
	--product_id,product_name ,price,
case when price > 100 then 'High'
     when price between 50 and 100 then 'medium'
     else 'low'
end as price_classcifi, count(product_id) as Tot_products
from products
group by 1
order by Tot_products desc;

--Identify returning customers: Label customers as "Returning" if they have placed more than one returns; otherwise, mark them as "New."
select *
	 O.customer_id ,C.customer_name,count(R.return_id) as Tot_returns,
	case when
	count(R.return_id) >1 then 'Returning'
	else 'new' end as status 
	from orders O
left join returns R on O.order_id=R.order_id
	inner join customers c  ON o.customer_id = c.customer_id
group by 1,2
order by 3;

    
--Determine seller performance: Evaluate sellers as "Top Performer" if their total sales amount exceeds the average sales amount; otherwise, classify them as "Average Performer."

select s.seller_id,s.seller_name ,sum(o.sale) as tot_sale ,
case 
	when sum(o.sale)> (select avg(sale) from orders) then 'Top performer'
     else 'Average performer' end as status
from sellers s
	 join orders o on s.seller_id= o.seller_id
group by 1,2
order by 3;
-- List the products that have a price higher than the average price of all products in the same category.
       select product_id,product_name ,price from products 
 group by product_id,product_name
 having price > (select avg(price) from products)
order by price asc;


CREATE TABLE SUPPLIERS(
	supplier_id  int primary key,
	supplier_name varchar(25),
	country varchar(25)
);


INSERT INTO SUPPLIERS
VALUES
  (501, 'alan', 'India'),
		(502, 'rex', 'US'),
		(503, 'dodo', 'India'),
		(504, 'rahul', 'US'),
		(505, 'zara', 'Canda'),
		(506, 'max', 'Canada');
select * from suppliers;

CREATE TABLE PRODUCTS1(
                        product_id int PRIMARY KEY,
						product_name VARCHAR(25),
						supplier_id int,
						price float,
	                    Foreign key (Supplier_id) references suppliers(supplier_id));


INSERT INTO products1
VALUES	(201, 'iPhone 14', '501', 1299),
		(202, 'iPhone 8', '502', 999),
		(204, 'iPhone 13', '502', 1199),
		(203, 'iPhone 11', '503', 1199),
		(205, 'iPhone 12', '502', 1199),
		(206, 'iPhone 14', '501', 1399),
		(214, 'iPhone 15', '503', 1499),
		(207, 'iPhone 15', '505', 1499),
		(208, 'iPhone 15', '504', 1499),
		(209, 'iPhone 12', '502', 1299),
		(210, 'iPhone 13', '502', 1199),
		(211, 'iPhone 11', '501', 1099),
		(212, 'iPhone 14', '503', 1399),
		(213, 'iPhone 8', '502', 1099);
INSERT INTO products1
VALUES	(222, 'Samsung Galaxy S21', '504', 1699),
		(223, 'Samsung Galaxy S20', '505', 1899),
		(224, 'Google Pixel 6', '501', 899),
		(225, 'Google Pixel 5', '502', 799),
		(226, 'OnePlus 9 Pro', '503', 1699),
		(227, 'OnePlus 9', '502', 1999),
		(228, 'Xiaomi Mi 11', '501', 899),
		(229, 'Xiaomi Mi 10', '504', 699),
		(230, 'Huawei P40 Pro', '505', 1099),
		(231, 'Huawei P30', '502', 1299),
		(232, 'Sony Xperia 1 III', '503', 1199),
		(233, 'Sony Xperia 5 III', '501', 999),
		(234, 'LG Velvet', '505', 1899),
		(235, 'LG G8 ThinQ', '504', 799),
		(236, 'Motorola Edge Plus', '502', 1099),
		(237, 'Motorola One 5G', '501', 799),
		(238, 'ASUS ROG Phone 5', '503', 1999),
		(239, 'ASUS ZenFone 8', '504', 999),
		(240, 'Nokia 8.3 5G', '502', 899),
		(241, 'Nokia 7.2', '501', 699),
		(242, 'BlackBerry Key2', '504', 1899),
		(243, 'BlackBerry Motion', '502', 799),
		(244, 'HTC U12 Plus', '501', 899),
		(245, 'HTC Desire 20 Pro', '505', 699),
		(246, 'Lenovo Legion Phone Duel', '503', 1499),
		(247, 'Lenovo K12 Note', '504', 1499),
		(248, 'ZTE Axon 30 Ultra', '501', 1299),
		(249, 'ZTE Blade 20', '502', 1599),
		(250, 'Oppo Find X3 Pro', '503', 1999);

delete  from products
where product_id in ('201','202','203','204','205','206','207','208','209','210','211','212','213','214');


select *, from(
select * ,
	row_number() over(order by price desc) as rn,
	rank() over(order by price desc) as rankk,
	dense_rank() over(order by price desc) as drank
	
	from products1)

where drank=2;

-- Write an SQL query to find the name of the product with the highest price in each country.
select *from
(select *,
	row_number() over(partition by country order by p.price desc) as rn ,
	rank() over(partition by country order by p.price desc),
	dense_rank() over(partition by country order by p.price desc)as d_rnk from products1 p
inner join suppliers s on p.supplier_id= s.supplier_id) x

--1. Retrieve the total number of customers in the database.
select count(customer_id) from customers;
--2. Calculate the total number of sellers registered on Amazon.
     select  count(seller_id) as tot, seller_name from sellers
     where seller_name='amazon'
     group by 2
     order by 1;
--3. List all unique product categories available.
select distinct(productname) from product2;
      

--4. Find the top 5 best-selling products by quantity sold.
select sub_category, count(quantity) as tot from orders
group by 1
order by 2 desc
limit 5;

--5. Determine the total revenue generated from sales.
select sum(sale) as rev from orders;

--6. List all customers who have made at least one return.
select  c.customer_name,
o.order_id,r.return_id from orders o
left join returns r on o.order_id= r.order_id
 left join customers c on o.customer_id=c.customer_id
group by 1,2,3
having count(r.return_id )>0 
order by 2,3;

 
--7. Calculate the average price of products sold.

select product_name,avg(price) from products
group by 1
order by 2;

--8. Identify the top 3 states with the highest total sales.
select state,round(sum(sale)::numeric,2) as s from orders
group by 1
order by 2 desc
limit 3;


--9. Find the product category with the highest average sale price.
select category,avg(price_per_unit) as pr from orders
group by 1
order by 2 desc;
 select distinct(category) from orders;

--10. List all orders with a sale amount greater than $100.
select order_id,customer_id,state,category,sale from orders
group by 1,2,3,4
having sale >100
order by 5 asc;


--11. Calculate the total number of returns processed.
select o.order_id,count(r.return_id )from orders o
left join returns r on o.order_id= r.order_id
group by 1
having count(r.return_id)>0
order by 1 asc ;

--12. Identify the top-selling seller based on total sales amount.

select * from
(select s.seller_id,s.seller_name ,o.category,sum(sale) as tot_sale ,
rank() over(partition by o.category order by sum(sale) desc) as ranks
from orders o
right join sellers s on s.seller_id= o.seller_id
group by 1,2,o.category) xx
 where ranks =1
order by category;

--13. List the products with the highest quantity sold in each category.

select p.product_id,p.product_name,o.category ,sum(o.quantity) as qun from orders o
join products p on o.product_id= p.product_id
group by 1,2,3
order by qun desc;
--14. Determine the average sale amount per order.
 select order_id,avg(sale) as avg from orders
group by 1
order by 2 desc;
--15. Find the top 5 customers who have spent the most money.
       select  c.customer_id,c.customer_name,sum(sale) as tot_spend from orders o
      left join customers c on c.customer_id= o.customer_id
       group by 1,2
     order by 3 desc
    limit 5;
/*--16. Calculate the total number of orders placed in each state.
--17. Identify the product sub-category with the highest total sales.
--18. List the orders with the highest total sale amount.
--19. Calculate the total sales revenue for each seller.
--20. Find the top 3 states with the highest average sale per order.
--21. Identify the product category with the highest total quantity sold.
--22. List the orders with the highest quantity of products purchased.*/


------------------Amazon zero analyst project with table,-----------------------
----------------customers,products,sellers,orders,returns,payments---------------------------
--- adding a column in table n doing a operation inside table
alter table orders
add column Total_sales Float;

update orders
	set Total_sales= price_per_unit * quantity;


/*--1.Top selling products
find the top 10 products by total sales value
include  product name,total quantity sold,total sales value*/



select 
	p.product_id,
	p.product_name,
	ord.quantity,
	sum(ord.sale) as Tot_value
	from products p
join orders ord on p.product_id = ord.product_id
group by 1,2,3
order by 4 desc
	limit 10;
limit 10;

/* calcute total revenue generated by each category.
include the percentage contribution of each category to tatal revenue*/

select category,sum(sale) as Tot_revenue,
	(sum(sale)/ (select sum(sale) from orders))*100 as per from orders
group by 1
order by 2 desc

/* 3. Compute the average order value for each customers
include only customers with more than 5 orders*/



SELECT 
    c.customer_id,
    c.customer_name,
    COUNT(o.order_id) AS total_orders,
    AVG(o.Total_sales) AS avg_order_value
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name
HAVING COUNT(o.order_id) > 5;

4./* query monthly total sales over last years
display sales trend,grouping by month,return sale before 8  months,sale at 7 months*/
----------------- if they ask you between dates(mention ord.order_date between ------ and -------))

SELECT 
    EXTRACT(YEAR FROM ord.order_date) AS year,
    EXTRACT(MONTH FROM ord.order_date) AS month,
    SUM(ord.sale) AS tot_sale
FROM orders ord
JOIN customers c ON ord.customer_id = c.customer_id
WHERE ord.order_date >= current_date - INTERVAL '1 year'
GROUP BY 1, 2
ORDER BY tot_sale DESC;
	

5./*  find customers who have registered but never placed a order,
list customer details and time at registration*/
SELECT *
    --c.customer_id,
   -- c.customer_name
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.customer_id IS NULL;

/*6. best selling categories by state,include the total sales for that category in each state*/
with category_rank as
	(
select category,state,sum(sale) as total_sales,
	rank() over(partition by category order by sum(sale) desc) as rk
	from orders
group by 1,2
	)
select 
      category,
      state,
      total_sales from category_rank
where rk=1;
/* 7.calculate the total value of orders placed by customers in their lifetime
.rank customers based on their customer lifetime value*/
SELECT customer_name, SUM(SALE) as tot ,
	row_number() over( order by sum(sale)desc) as rn from customers c
join orders o on c.customer_id=o.customer_id
group by 1

/* 8.query products with the stock level below threshold(less than 30 unit) include last restock date and warehouse info*/
select  product_id, last_stock_date, warehouse_id from inventory
	where stock <30
	group by 1,2,3

--9.identify orders where shipping date is later than 3 days after order date,include customer,order detail n delivery
select c.customer_id,c.customer_name,o.order_date,s.delivery_status from orders o
	join customers c on o.customer_id = c.customer_id
	join shipments s on o.order_id= s.order_id
	where shipping_date >= order_date + interval '3 days'
	group by 	1,2,3,4

	
--10.calculate the percentage of successful payments across orders,
--include stats breakdown pending and success


--12.product profit margin
	--calculate the profit margin for each product(diff between price n cost f goods sold)
	--rank from profit margin arranging from highest to lowest

	select p.product_id,
    p.product_name,
    p.price,
    p.cogs,  -- assuming COGS is stored as 'cogs' in the products table
    (p.price - p.cogs) AS profit,  -- Difference between price and COGS
    ((p.price - p.cogs) / p.price) * 100 AS profit_margin ,-- Profit margin percentage
	dense_rank() over( order by ((p.price - p.cogs) / p.price) * 100 desc) as dk
	from products p
-- 13.. Most returned products
	-- Query the top 10 products by the no of returns.
	--display the return rate as percentage of total unit sold for each producct
	select p.product_id,p.product_name ,count(*)  as tot,
	sum(case when s.delivery_status ='returned' then 1 else 0 end) as total_returns,
	(sum(case when s.delivery_status ='returned' then 1 else 0 end)::numeric/count(*)::numeric)*100 as ratio
	from orders o
	join shipments s on o.order_id = s.order_id
	join products p on o.product_id= p.product_id
	where delivery_status ='returned'
	group by 1,2
	order by 3 desc,4 desc
-14. /*inactive sellers
	identify sellers who have not made any sales in last 6 months
	show the last sale date and total sales from those sellers */
	
	
	

with cte1 as
(
select *  from sellers s
where s.seller_id not in(select o.seller_id  from orders o where order_date >= current_date- interval'6 months')
)
select  cte1.seller_id,
		cte1.seller_name,
		MAX(o.order_date) as last_sale_date,
		max(o.total_sales) as last_sale
from orders o
join cte1 on o.seller_id = cte1.seller_id
group by 1,2

/*Explanation:
last_sales CTE:

We calculate each seller's last sale date and total sales using MAX(o.order_date) and SUM(o.total_sales).
We perform a LEFT JOIN between sellers and orders to ensure that we still capture sellers even if they have no orders.
WHERE ls.last_sale_date <= current_date - INTERVAL '6 months':

This condition filters sellers who have not made any sales in the last 6 months.
OR ls.last_sale_date IS NULL: This condition includes sellers who have never made any sales (i.e., they have no corresponding records in the orders table).
ORDER BY ls.last_sale_date DESC, ls.total_sales DESC:

/*Summary:
order_date <= current_date - interval '6 months': Finds orders on or before the date 6 months ago. 
		Useful for identifying old activity or lack of recent sales.

order_date > current_date - interval '6 months': Finds orders within the last 6 months. 
		Useful for identifying recent sales or activity.

In your context, if you're looking for sellers who haven't made sales in the last 6 months, 
		you'd use order_date <= current_date - interval '6 months'. 
		If you're looking for those who have made sales in the last 6 months,
		use order_date > current_date - interval '6 months'.*/



--15.identify sellers who doesnot made any sale in the last 8 months,show the last sale date and last total sales from seller */

with seller_list as
	(
select * from sellers
where seller_id in(select seller_id from orders where order_date > current_date - interval'8 months')
)
select o.seller_id,
	max(o.sale) as max_sale ,
	max(o.order_date) as last_order_date 
	from orders o
join seller_list sl on o.seller_id= sl.seller_id
group by 1
order by 2 desc,3 desc

	------- approch 2
	select s.seller_id,
	max(o.total_sales) as max_sale ,
	max(o.order_date) as last_order_date 
	from orders o
	join sellers s on o.seller_id= s.seller_id
	where o.order_date > current_date - interval'8 months'
	group by 1
	order by 2 desc,3 desc

	
--16. Identify the customers into returning or new.
--	if the customers have done more than 5 returning categorize them as returning ortherwise new challenge
--return  :customer_id,name,total orders,total returns*/

with customer_list as
(
select c.customer_id,c.customer_name ,count(o.order_id) as tot_ord,count(r.return_id) as tot_ret
from customers c
left join orders o on c.customer_id= o.customer_id
left join returns r on o.order_id= r.order_id
group by 1,2
order by 3,4
)
select 
     customer_id,
     customer_name ,
     tot_ord,
     tot_ret,
case 
    when tot_ret > 5 then 'returning'
    else 'new'
 end as status
from customer_list cl

17. --top 5customers by orders in each state
--identify the top 5 customers with the highest no of orders in each state.
--Include the no of orders and total sales for each customers
with list as
(
 select customer_id, state ,count(order_id) as tot_orders, sum(sale) as tot_sale ,
dense_rank() over(partition by state order by count(order_id) desc) as dk from orders
group by 1,2
)
select customer_id, 
state ,
tot_orders, 
tot_sale,dk
from list 
where dk <= 5

18. --revenue by a shipping provoider
--calculate the total revenue handled by each shipping provoider
--challenge: include the total no of orders handled and  average delivery time for each provoider

select s.shipping_providers,
count(o.order_id) as tot_count,
sum(o.sale) as tot_sale ,
AVG(s.return_date - s.shipping_date) AS avg_delivery_time
from orders o
join shipments s on o.order_id= s.order_id
group by 1
order by 2,3

--19.top 10 products with hightest decresing revenue ratio,compare to last year(2023) n current year(2024)
--product_id,product_name,category_name,2022 revenue,2023 revenue decrease revenue at the end round the end..
with last_year_rev as
(
select p.product_id,p.product_name,o.category,sum(sale) as revenue
from products p
join orders o on p.product_id= o.product_id
where extract(year from order_date)= 2023
group by 1,2,3
order by 4 desc
),
current_year_rev as
(
select p.product_id,p.product_name,o.category,sum(sale) as revenue
from products p
join orders o on p.product_id= o.product_id
where extract(year from order_date)= 2024
group by 1,2,3
order by 4 desc
) 
select
lyr.product_id,
	lyr.revenue as last_yaer_rev,
    cyr.revenue as current_year_rev,
    lyr.revenue - cyr.revenue as  revenue_diff ,
    (cyr.revenue - lyr.revenue )/ lyr.revenue *100 as revenue_decrese_ratio
from last_year_rev lyr
join current_year_rev cyr on lyr.product_id= cyr.product_id
where lyr.revenue> cyr.revenue
group by 1,2,3
order by 4,5


