CREATE TABLE retail_sales (
    order_id        INT,
    customer_id     INT,
    customer_name   VARCHAR(50),
    product_id      INT,
    product_name    VARCHAR(50),
    category        VARCHAR(30),
    quantity        INT,
    price           DECIMAL(10,2),
    order_date      DATE,
    city            VARCHAR(50)
);

INSERT INTO retail_sales VALUES (101, 1, 'Rahul',   201, 'Laptop',     'Electronics', 1, 55000, '2024-01-10', 'Bangalore');
INSERT INTO retail_sales VALUES (102, 2, 'Anita',   202, 'Mobile',     'Electronics', 2, 20000, '2024-01-11', 'Chennai');
INSERT INTO retail_sales VALUES (103, 3, 'Kiran',   203, 'Shoes',      'Fashion',     1, 3000,  '2024-01-12', 'Hyderabad');
INSERT INTO retail_sales VALUES (104, 4, 'Sneha',   204, 'Watch',      'Accessories', 1, 7000,  '2024-01-13', 'Mumbai');
INSERT INTO retail_sales VALUES (105, 5, 'Arjun',   205, 'T-shirt',    'Fashion',     3, 1500,  '2024-01-14', 'Delhi');
INSERT INTO retail_sales VALUES (106, 6, 'Meena',   206, 'Tablet',     'Electronics', 1, 25000, '2024-01-15', 'Pune');
INSERT INTO retail_sales VALUES (107, 7, 'Ravi',    207, 'Headphones', 'Electronics', 2, 3000,  '2024-01-16', 'Kolkata');
INSERT INTO retail_sales VALUES (108, 8, 'Priya',   208, 'Bag',        'Accessories', 1, 2000,  '2024-01-17', 'Ahmedabad');
INSERT INTO retail_sales VALUES (109, 9, 'Vikram',  209, 'Jeans',      'Fashion',     2, 2500,  '2024-01-18', 'Jaipur');
INSERT INTO retail_sales VALUES (110, 10,'Divya',   210, 'Camera',     'Electronics', 1, 45000, '2024-01-19', 'Bangalore');

-- 🔹ROW_NUMBER
-- Assign a unique row number to each order based on order_date (oldest to latest).
-- Find the latest order for each customer using ROW_NUMBER.
-- Retrieve the top 2 highest priced products in each category using ROW_NUMBER.
-- 🔹 RANK
-- Rank all orders based on price in descending order.
-- Find the 2nd highest priced product in each category using RANK.
-- 🔹 DENSE_RANK
-- Assign dense rank to products based on price within each category.
-- Get the top 3 unique price levels across all products using DENSE_RANK.
-- 🔹 LEAD
-- Display the next order price for each customer based on order_date using LEAD.
-- Show the next order date for each customer using LEAD.
-- 🔹 LAG
-- Display the previous order price for each customer based on order_date using LAG.



select * from RETAIL_SALES;
select order_id,order_date, row_number() over(order by ORDER_DATE) as rowno from RETAIL_SALES;

select * from(
select category,product_name,PRICE, row_number() over(partition by CATEGORY order by price desc) as rowno from retail_sales
) where rowno<=2;


select price, rank() over(order by price desc) as rank from REtail_sales

select * from (select category, PRODUCT_NAME, price, rank() over(partition by category order by price desc) as rank from REtail_sales)
where rank=2

select category,product_name,price,dense_rank() over(partition by category order by price desc) from retail_sales

select * from (
select category, product_name, price, dense_rank() over (partition by category order by price desc) as drank from retail_sales)
where drank<=3

select CUSTOMER_ID,price,order_date, lead(price) over(order by order_date desc) from retail_sales


select customer_id, lead(order_date) over(order by customer_id) from retail_sales

select CUSTOMER_ID,price,order_date, lag(price) over(order by order_date desc) from retail_sales

