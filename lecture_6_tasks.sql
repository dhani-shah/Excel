create database Joinpractice2

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50)
);

INSERT INTO Customers (customer_id, customer_name, city)
VALUES
(101, 'Aarav Shah', 'Ahmedabad'),
(102, 'Riya Patel', 'Mumbai'),
(103, 'Rahul Mehta', 'Delhi'),
(104, 'Priya Sharma', 'Ahmedabad'),
(105, 'Karan Desai', 'Pune'),
(106, 'Neha Joshi', 'Mumbai'),
(107, 'Arjun Patel', 'Bangalore'),
(108, 'Sneha Shah', 'Delhi'),
(109, 'Vivek Mehta', 'Ahmedabad'),
(110, 'Anjali Desai', 'Surat'),
(111, 'Rohan Shah', 'Pune'),
(112, 'Meera Patel', 'Mumbai'),
(113, 'Dhruv Shah', 'Ahmedabad'),
(114, 'Kavya Mehta', 'Delhi'),
(115, 'Yash Desai', 'Bangalore'),
(116, 'Ishita Patel', 'Surat'),
(117, 'Manav Shah', 'Pune'),
(118, 'Pooja Joshi', 'Mumbai'),
(119, 'Nikhil Mehta', 'Ahmedabad'),
(120, 'Tanya Shah', 'Delhi');


CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_name VARCHAR(100),
    quantity INT,
    amount DECIMAL(10,2)
);

INSERT INTO Orders 
(order_id, customer_id, product_name, quantity, amount)
VALUES
(1001, 101, 'Laptop', 2, 55000),
(1002, 101, 'Mouse', 5, 800),
(1003, 101, 'Keyboard', 3, 1500),
(1004, 102, 'Laptop', 1, 62000),
(1005, 102, 'Monitor', 2, 18000),
(1006, 103, 'Mobile Phone', 2, 35000),
(1007, 103, 'Headphones', 4, 4500),
(1008, 104, 'Laptop', 1, 58000),
(1009, 104, 'Printer', 2, 12500),
(1010, 104, 'Keyboard', 5, 1400),
(1011, 105, 'Office Chair', 4, 8500),
(1012, 105, 'Monitor', 3, 17000),
(1013, 106, 'Mobile Phone', 3, 32000),
(1014, 106, 'Headphones', 5, 4200),
(1015, 107, 'Laptop', 2, 60000),
(1016, 107, 'Mouse', 10, 750),
(1017, 108, 'Monitor', 4, 16000),
(1018, 108, 'Keyboard', 6, 1300),
(1019, 109, 'Laptop', 2, 57000),
(1020, 109, 'Printer', 3, 13500),
(1021, 109, 'Mouse', 8, 700),
(1022, 110, 'Mobile Phone', 2, 36000),
(1023, 110, 'Headphones', 3, 4800),
(1024, 111, 'Laptop', 1, 65000),
(1025, 111, 'Monitor', 2, 19000),
(1026, 112, 'Printer', 4, 12000),
(1027, 112, 'Keyboard', 7, 1200),
(1028, 113, 'Laptop', 3, 54000),
(1029, 113, 'Mouse', 6, 850),
(1030, 113, 'Headphones', 4, 5000),
(1031, 114, 'Mobile Phone', 2, 34000),
(1032, 114, 'Monitor', 3, 17500),
(1033, 115, 'Laptop', 2, 59000),
(1034, 115, 'Printer', 2, 14000),
(1035, 116, 'Office Chair', 5, 9000),
(1036, 117, 'Laptop', 1, 61000),
(1037, 117, 'Keyboard', 8, 1250),
(1038, 118, 'Mobile Phone', 3, 33000),
(1039, 118, 'Headphones', 6, 4300),
(1040, 119, 'Laptop', 2, 56000),
(1041, 119, 'Monitor', 2, 18500),
(1042, 119, 'Printer', 1, 15000),
(1043, 121, 'Laptop', 1, 60000),
(1044, 122, 'Monitor', 2, 17000);


CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

INSERT INTO Products
(product_id, product_name, category, price)
VALUES
(201, 'Laptop', 'Electronics', 60000),
(202, 'Mobile Phone', 'Electronics', 35000),
(203, 'Monitor', 'Electronics', 18000),
(204, 'Printer', 'Electronics', 14000),
(205, 'Keyboard', 'Accessories', 1500),
(206, 'Mouse', 'Accessories', 800),
(207, 'Headphones', 'Accessories', 4500),
(208, 'Office Chair', 'Furniture', 9000),
(209, 'Webcam', 'Accessories', 3500),
(210, 'Tablet', 'Electronics', 28000),
(211, 'Desk', 'Furniture', 15000),
(212, 'USB Hub', 'Accessories', 1200);


CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);


INSERT INTO Departments
(department_id, department_name)
VALUES
(1, 'Sales'),
(2, 'Marketing'),
(3, 'Finance'),
(4, 'Human Resources'),
(5, 'IT'),
(6, 'Operations'),
(7, 'Customer Support');


CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    department_id INT,
    designation VARCHAR(100),
    salary DECIMAL(10,2)
);


INSERT INTO Employees
(employee_id, employee_name, department_id, designation, salary)
VALUES
(301, 'Amit Shah', 1, 'Sales Executive', 45000),
(302, 'Bhavna Patel', 1, 'Sales Executive', 48000),
(303, 'Chirag Mehta', 1, 'Sales Manager', 75000),
(304, 'Disha Sharma', 2, 'Marketing Executive', 50000),
(305, 'Esha Desai', 2, 'Marketing Manager', 78000),
(306, 'Farhan Khan', 3, 'Financial Analyst', 65000),
(307, 'Gauri Joshi', 3, 'Finance Manager', 90000),
(308, 'Harsh Patel', 4, 'HR Executive', 48000),
(309, 'Isha Shah', 5, 'Software Engineer', 70000),
(310, 'Jay Mehta', 5, 'System Administrator', 68000),
(311, 'Kriti Desai', 6, 'Operations Executive', 52000),
(312, 'Lalit Shah', NULL, 'Sales Executive', 46000);

select * from Customers;
select * from Orders;
select * from Products;
select * from Departments;
select * from Employees;

--task 1
select 
    c.customer_id,
    c.customer_name,
    c.city,
    count(o.order_id) as Total_no_order,
    sum(o.quantity) as Total_quantity,
    sum(o.quantity*o.amount) as total_purchase_value,
    avg(o.quantity*o.amount) as Avg_Order_val
from Customers as c
left join Orders as o
on c.customer_id = o.customer_id
group by c.customer_id,c.customer_name,c.city
having count(o.customer_id) > 2 and sum(o.quantity*o.amount) > 75000

--task 2
select 
    c.city,
    count(c.customer_id) as number_of_customer,
    COUNT(o.order_id) as number_of_orders,
    sum(o.quantity) as Total_quantity_sold,
    sum(o.quantity*o.amount) as Total_sales_value,
    avg(o.quantity*o.amount) as Avg_Order_value
from Customers as c
left join Orders as o
on c.customer_id = o.customer_id
where (o.quantity*o.amount) > 100000
group by c.city;

--task 3
select 
    c.customer_id,
    c.customer_name,
    c.city,
    count(o.order_id) as no_of_order,
    sum(o.quantity*o.amount) as total_purchase_value,
    max(o.quantity*o.amount) as highest_transaction
from Customers as c
left join Orders as o
on c.customer_id = o.customer_id
where o.amount > 25000 and (o.quantity*o.amount) > 50000
group by c.customer_id,c.customer_name,c.city;

--task 4
select 
    c.customer_id,
    c.customer_name,
    c.city,
    count(o.order_id) as no_of_order,
    sum(o.quantity) as total_quantity_purchased,
    sum(o.quantity*o.amount) as total_purchase_value,
    max(o.quantity*o.amount) as highest_transaction
from Customers as c
left join Orders as o
on c.customer_id = o.customer_id
group by c.customer_id,c.customer_name,c.city
having count(o.customer_id) > 2;

--task 5
select 
    p.product_name,
    count(o.order_id) as no_of_order,
    sum(o.quantity) as total_quantity_sold,
    sum(o.quantity*o.amount) as total_revenue,
    avg(o.quantity*o.amount) as avg_order_amount,
    max(o.quantity*o.amount) as highest_order_amount
from Products as p
left join Orders as o
on p.product_name = o.product_name
group by p.product_name
having count(o.product_name) > 2;

--task 6
select 
    p.product_name,
    count(o.order_id) as no_of_order,
    sum(o.quantity) as total_quantity_sold,
    sum(o.quantity*o.amount) as total_revenue
from Products as p
left join Orders as o
on p.product_name = o.product_name
group by p.product_name
having SUM(o.quantity) > 20 and count(o.order_id) > 4;

--task 7
select 
    c.city,
    count(c.customer_id) as total_customer,
    COUNT(o.order_id) as total_orders,
    sum(o.quantity) as Total_quantity_sold,
    sum(o.quantity*o.amount) as total_revenue
from Customers as c
left join Orders as o
on c.customer_id = o.customer_id
group by c.city
having count(c.customer_id) > 2 and COUNT(o.order_id) > 4 and sum(o.quantity*o.amount) > 200000

--task 8
select 
    c.customer_id,
    c.customer_name,
    c.city,
    COUNT(o.order_id) as total_orders,
    MIN(o.quantity * o.amount) as min_order_value,
    Max(o.quantity * o.amount) as max_order_value,
    avg(o.quantity * o.amount) as avg_order_value,
    sum(o.quantity*o.amount) as total_purchase_value
from Customers as c
left join Orders as o
on c.customer_id = o.customer_id
group by c.city , c.customer_id , c.customer_name
having COUNT(o.order_id) > 2
 
--task 9
select 
    c.customer_id,
    c.customer_name,
    c.city,
    COUNT(o.order_id) as total_orders,
    sum(o.quantity) as Total_quantity_purchased,
    sum(o.quantity*o.amount) as total_purchase_value
from Customers as c
left join Orders as o
on c.customer_id = o.customer_id
group by c.city , c.customer_id , c.customer_name
having COUNT(o.order_id) > 2
order by total_orders desc 

--task 10
select 
    c.customer_id,
    c.customer_name,
    c.city,
    COUNT(o.order_id) as total_orders,
    sum(o.quantity*o.amount) as total_purchase_value
from Customers as c
left join Orders as o
on c.customer_id = o.customer_id
group by c.city , c.customer_id , c.customer_name
having COUNT(o.order_id) < 3 and COUNT(o.order_id) > 0
order by total_purchase_value desc 

--task 11
select 
    c.customer_id,
    c.customer_name,
    c.city,
    COUNT(o.order_id) as total_orders,
     sum(o.quantity) as Total_quantity_purchased,
    sum(o.quantity*o.amount) as total_purchase_value
from Customers as c
left join Orders as o
on c.customer_id = o.customer_id
group by c.city , c.customer_id , c.customer_name

--task 12
select 
    c.customer_id,
    c.customer_name,
    c.city
from Customers as c
left join Orders as o
on c.customer_id = o.customer_id
where o.order_id is null
group by c.city , c.customer_id , c.customer_name

--task 13
select 
    c.customer_id,
    c.customer_name,
    c.city,
    COUNT(o.order_id) as total_orders,
    sum(o.quantity*o.amount) as total_purchase_value
from Customers as c
left join Orders as o
on c.customer_id = o.customer_id
group by c.city , c.customer_id , c.customer_name

--task 14
select 
    p.product_id,
    p.product_name,
    p.category,
    p.price
from Products as p
left join Orders as o
on p.product_name = o.product_name

--task 15
select
   c.customer_id,
   c.customer_name,
   c.city,
   o.order_id,
   o.product_name,
   o.quantity,
   o.amount
from Customers as c
full join Orders as o
on c.customer_id = o.customer_id

--task 16
select
   c.customer_id,
   c.customer_name,
   o.order_id,
   o.product_name,
   o.amount
from Customers as c
full join Orders as o
on c.customer_id = o.customer_id
where c.customer_id is null or o.order_id is null

--task 17
select
   c.customer_id,
   c.customer_name,
   c.city,
   o.order_id,
   o.product_name,
   o.quantity,
   o.amount,
   sum(o.quantity * o.amount) as transaction_value
from Customers as c
full join Orders as o
on c.customer_id = o.customer_id
group by c.customer_id, c.customer_name, c.city, o.order_id, o.product_name, o.quantity,o.amount

--task 18
select
   c.customer_id,
   c.customer_name,
   c.city
from Customers as c
full join orders as o
on c.customer_id = o.customer_id
where o.customer_id is null

--task 19
select
   p.product_id,
   p.product_name,
   p.category,
   p.price
from Products as p
full join orders as o
on p.product_name = o.product_name
where o.order_id is null

--task 20
select
   c.customer_id,
   c.customer_name,
   c.city
from Customers as c
full join orders as o
on c.customer_id = o.customer_id
where o.customer_id is null

--task 21
select
   p.product_id,
   p.product_name,
   p.category,
   p.price
from Products as p
full join orders as o
on p.product_name = o.product_name
where o.order_id is null
order by price desc

--task 22
select
   c.customer_id,
   c.customer_name,
   c.city,
   p.product_id,
   p.product_name,
   p.category
from Customers as c
inner join Orders as o
on c.customer_id = o.customer_id
inner join Products as p
on o.product_name = p.product_name

--task 23
select COUNT(*) as theoretical_size_of_campaign
from Customers as c
cross join Products as p

--task 24
select
   c.city,
   p.product_name
from Customers as c
cross join Products as p

--task 25
select 
   c.customer_id,
   c.customer_name,
   c.city,
   count(o.order_id) as total_orders,
   SUM(o.quantity * o.amount) as total_quantity_purchased,
   SUM(o.quantity * o.amount) as total_revenue,
   Max(o.quantity * o.amount) as max_order_value,
   avg(o.quantity * o.amount) as avg_order_value
from Customers as c
cross join Orders as o
group by c.customer_id, c.customer_name, c.city
having count(o.order_id) > 2 
order by total_revenue, total_orders, avg_order_value desc
