create database salesanalytics;

USE salesanalytics;

Create table sales_transaction (
     Transaction_ID INT PRIMARY KEY,
     Customer_Name VARCHAR(50),
     Product_Name VARCHAR(50),
     Category VARCHAR(50),
     Quantity INT,
     Unit_Price INT,
     Discount INT,
     City VARCHAR(50),
     Payment_Mode VARCHAR(50),
     Sales_Person VARCHAR(50),
     Customer_Type VARCHAR(50)
);

Insert into sales_transaction
Values
(1001, 'Raj Mehta', 'MacBook Pro', 'Electronics', 2, 125000, 10, 'Mumbai', 'Online', 'Rahul', 'Premium'),
(1002, 'Priya Sharma', 'Office Chair', 'Furniture', 3, 15000, 5, 'Delhi', 'Card', 'Amit', 'Regular'),
(1003, 'Arjun Patel', 'Running Shoes', 'Sports', 2, 8000, 8, 'Ahmedabad', 'Online', 'Neha', 'Premium'),
(1004, 'Sneha Kapoor', 'Denim Jacket', 'Clothing', 4, 4500, 12, 'Pune', 'UPI', 'Rahul', 'Regular'),
(1005, 'Vikram Singh', 'Coffee Maker', 'Home Appliances', 1, 12000, 5, 'Jaipur', 'Cash', 'Priya', 'Regular'),
(1006, 'Ananya Joshi', 'iPad Air', 'Electronics', 2, 65000, 10, 'Mumbai', 'Card', 'Amit', 'Premium'),
(1007, 'Rohan Gupta', 'Cooking Oil', 'Grocery', 5, 1800, 7, 'Bangalore', 'Online', 'Neha', 'VIP'),
(1008, 'Kavya Nair', 'Face Serum', 'Beauty', 3, 2500, 15, 'Kochi', 'UPI', 'Rahul', 'Premium'),
(1009, 'Aditya Shah', 'Harry Potter Book', 'Books', 4, 800, 5, 'Ahmedabad', 'Card', 'Priya', 'Regular'),
(1010, 'Meera Iyer', 'Dining Table', 'Furniture', 1, 35000, 10, 'Chennai', 'Online', 'Amit', 'Premium'),
(1011, 'Karan Malhotra', 'AirPods Pro', 'Electronics', 5, 25000, 8, 'Delhi', 'UPI', 'Neha', 'Regular'),
(1012, 'Pooja Verma', 'Samsung TV', 'Electronics', 2, 55000, 12, 'Lucknow', 'Card', 'Rahul', 'Premium'),
(1013, 'Nikhil Rao', 'Organic Rice', 'Grocery', 6, 1200, 10, 'Hyderabad', 'Online', 'Priya', 'Regular'),
(1014, 'Simran Kaur', 'Handbag', 'Fashion', 2, 6500, 5, 'Chandigarh', 'UPI', 'Amit', 'Premium'),
(1015, 'Manish Kumar', 'ASUS Laptop', 'Electronics', 2, 78000, 15, 'Patna', 'Cash', 'Neha', 'Regular'),
(1016, 'Divya Menon', 'JBL Speaker', 'Electronics', 4, 12000, 5, 'Kochi', 'Online', 'Rahul', 'Regular'),
(1017, 'Suresh Yadav', 'Cricket Bat', 'Sports', 3, 5500, 10, 'Jaipur', 'Card', 'Priya', 'Premium'),
(1018, 'Ishita Roy', 'Lipstick Set', 'Beauty', 2, 3500, 8, 'Kolkata', 'UPI', 'Amit', 'Premium'),
(1019, 'Abhishek Jain', 'Gaming Laptop', 'Electronics', 2, 110000, 12, 'Indore', 'Online', 'Neha', 'Regular'),
(1020, 'Neha Agarwal', 'Sofa Set', 'Furniture', 1, 85000, 10, 'Mumbai', 'Card', 'Rahul', 'Premium'),
(1021, 'Varun Desai', 'Logitech Keyboard', 'Electronics', 6, 8000, 5, 'Ahmedabad', 'UPI', 'Priya', 'Regular'),
(1022, 'Aisha Khan', 'Yoga Mat', 'Sports', 3, 2000, 7, 'Hyderabad', 'Online', 'Amit', 'Premium'),
(1023, 'Rohit Bansal', 'Formal Shirt', 'Clothing', 5, 2500, 10, 'Delhi', 'Card', 'Neha', 'Regular'),
(1024, 'Tanvi Mehta', 'Acer Laptop', 'Electronics', 1, 62000, 8, 'Surat', 'UPI', 'Rahul', 'Premium'),
(1025, 'Yash Thakur', 'GoPro Camera', 'Electronics', 2, 45000, 5, 'Pune', 'Online', 'Priya', 'VIP'),
(1026, 'Nandini Rao', 'Kindle', 'Books', 4, 15000, 10, 'Chennai', 'Card', 'Amit', 'Regular'),
(1027, 'Harsh Vora', 'Google Pixel 9', 'Electronics', 2, 80000, 12, 'Ahmedabad', 'UPI', 'Neha', 'Premium'),
(1028, 'Riya Sethi', 'LG Refrigerator', 'Home Appliances', 1, 65000, 15, 'Mumbai', 'Online', 'Rahul', 'Regular'),
(1029, 'Akash Mishra', 'Philips Monitor', 'Electronics', 3, 30000, 5, 'Lucknow', 'Card', 'Priya', 'Premium'),
(1030, 'Isha Patel', 'Air Fryer', 'Home Appliances', 2, 9000, 10, 'Vadodara', 'UPI', 'Amit', 'Premium');

SELECT * FROM sales_transaction

--1
SELECT
    COUNT(sales_transaction.Transaction_ID) AS total_transactions,
    SUM(sales_transaction.Quantity) AS total_quantity_sold,
    SUM(sales_transaction.Quantity *sales_transaction.Unit_Price) AS total_sales_value,
    AVG(Unit_Price) AS average_unit_price,
    MAX(Unit_Price) AS highest_unit_price,
    MIN(Unit_Price) AS lowest_unit_price
FROM sales_transaction;

--2
SELECT
    Category,
    COUNT(Transaction_ID) AS total_transactions,
    SUM(Quantity) AS total_quantity_sold,
    SUM(Quantity *Unit_Price) AS total_sales_value,
    AVG(Unit_Price) AS average_unit_price
FROM sales_transaction
GROUP BY Category
ORDER BY total_sales_value DESC;

--3
SELECT 
   Sales_Person,
    COUNT(Transaction_ID) AS total_transactions,
    SUM(Quantity) AS total_quantity_sold,
    SUM(Quantity *Unit_Price) AS total_sales_value,
    AVG(Unit_Price) AS average_unit_price
FROM sales_transaction
GROUP BY Sales_Person
ORDER BY total_sales_value DESC;

--4
SELECT 
   City,
    COUNT(Transaction_ID) AS total_transactions,
    SUM(Quantity) AS total_quantity_sold,
    SUM(Quantity *Unit_Price) AS total_sales_value,
    AVG(Unit_Price) AS average_unit_price
FROM sales_transaction
GROUP BY City
ORDER BY total_sales_value DESC;

--5
SELECT 
    Customer_Type,
    COUNT(Transaction_ID) AS total_transactions,
    SUM(Quantity) AS total_quantity_sold,
    SUM(Quantity *Unit_Price) AS total_sales_value,
    AVG(Unit_Price) AS average_unit_price
FROM sales_transaction
GROUP BY Customer_Type
ORDER BY total_sales_value DESC;

--6
SELECT 
  Payment_Mode,
    COUNT(Transaction_ID) AS total_transactions,
    SUM(Quantity) AS total_quantity_sold,
    SUM(Quantity *Unit_Price) AS total_sales_value,
    AVG(Unit_Price) AS average_unit_price
FROM sales_transaction
GROUP BY Payment_Mode
ORDER BY total_sales_value DESC;

--7
SELECT 
    Category,
    SUM(Quantity) AS total_quantity_sold,
    SUM(Quantity *Unit_Price) AS total_sales_value,
    AVG(Unit_Price) AS average_unit_price 
FROM sales_transaction
GROUP BY Category
having sum(Quantity *Unit_Price) > 300000

--8
SELECT 
   Sales_Person,
    COUNT(Transaction_ID) AS total_transactions,
    SUM(Quantity) AS total_quantity_sold,
    SUM(Quantity *Unit_Price) AS total_sales_value
FROM sales_transaction
GROUP BY  Sales_Person
having sum(Quantity *Unit_Price) > 500000
ORDER BY total_sales_value DESC;

--9
SELECT 
   Product_Name,
    SUM(Quantity) AS total_quantity_sold,
    SUM(Quantity *Unit_Price) AS total_sales_value,
    AVG(Unit_Price) AS average_unit_price
FROM sales_transaction
GROUP BY  Product_Name
having sum(Quantity) > 5
ORDER BY total_quantity_sold DESC;

--10
SELECT 
  Category,
  Customer_Type = 'Premium',
    COUNT(Transaction_ID) AS total_transactions,
    SUM(Quantity) AS total_quantity_sold,
    SUM(Quantity *Unit_Price) AS total_sales_value,
    AVG(Unit_Price) AS average_unit_price
FROM sales_transaction
GROUP BY Category
having sum(Quantity *Unit_Price) > 200000

--11
SELECT 
  Sales_Person,
  Customer_Type = 'VIP',
    COUNT(Transaction_ID) AS total_transactions,
    SUM(Quantity) AS total_quantity_sold,
    SUM(Quantity *Unit_Price) AS total_sales_value
FROM sales_transaction
GROUP BY Sales_Person
having sum(Quantity *Unit_Price) > 300000

--12
SELECT 
  City,
    COUNT(Transaction_ID) AS total_transactions,
    SUM(Quantity) AS total_quantity_sold,
    SUM(Quantity *Unit_Price) AS total_sales_value
FROM sales_transaction
where Payment_Mode = 'Online' or Payment_Mode = 'Card'
GROUP BY City 
having sum(Quantity *Unit_Price) > 300000

--13
SELECT 
  Discount,
    COUNT(Transaction_ID) AS total_transactions,
    SUM(Quantity) AS total_quantity_sold,
    SUM(Quantity *Unit_Price) AS total_sales_value,
    AVG(Unit_Price) AS average_unit_price
FROM sales_transaction
GROUP BY Discount
having COUNT(*) >= 2

--14
SELECT 
  Sales_Person,
  Category = 'Electronics',
    COUNT(Transaction_ID) AS total_transactions,
    SUM(Quantity) AS total_quantity_sold,
    SUM(Quantity *Unit_Price) AS total_sales_value,
    AVG(Unit_Price) AS average_unit_price,
    MAX(Unit_Price) AS highest_unit_price
FROM sales_transaction
GROUP BY Sales_Person
having sum(Quantity *Unit_Price) > 250000

--15
SELECT 
  City,
  Category = 'Furniture',
    COUNT(Transaction_ID) AS total_transactions,
    SUM(Quantity) AS total_quantity_sold,
    SUM(Quantity *Unit_Price) AS total_sales_value,
    AVG(Unit_Price) AS average_unit_price
FROM sales_transaction
where Quantity > 2
GROUP BY City
having sum(Quantity *Unit_Price) > 50000

--16
SELECT 
  Sales_Person,
  Category = 'Home Appliances',
    COUNT(Transaction_ID) AS total_transactions,
    SUM(Quantity) AS total_quantity_sold,
    SUM(Quantity *Unit_Price) AS total_sales_value,
    AVG(Unit_Price) AS average_unit_price
FROM sales_transaction
where not Payment_Mode = 'Cash' and
Discount < 20
GROUP BY Sales_Person
having sum(Quantity *Unit_Price) > 100000

--17
SELECT 
Customer_Type,
    COUNT(Transaction_ID) AS total_transactions,
    SUM(Quantity) AS total_quantity_sold,
    SUM(Quantity *Unit_Price) AS total_sales_value,
    AVG(Unit_Price) AS average_unit_price,
    MAX(Unit_Price) AS highest_unit_price
FROM sales_transaction
where Customer_Type in ('Premium' , 'VIP')
GROUP BY Customer_Type
ORDER BY sum(Quantity *Unit_Price) desc

--18
SELECT 
Sales_Person,
    COUNT(Transaction_ID) AS total_transactions,
    SUM(Quantity) AS total_quantity_sold,
    SUM(Quantity *Unit_Price) AS total_sales_value,
    AVG(Discount) AS average_discount
FROM sales_transaction
where Discount > 14
GROUP BY Sales_Person
having COUNT(*) >= 2

--19
insert into sales_transaction
Values
(1031, 'Vanshika Patel', 'Macbook Pro', 'Electronics', 3, 12500, 16, 'Mumbai', 'Online', 'Rahul', 'Premium');
SELECT * FROM sales_transaction;

--20
SELECT
Sales_Person,
Category,
    COUNT(sales_transaction.Transaction_ID) AS total_transactions,
    SUM(sales_transaction.Quantity) AS total_quantity_sold,
    SUM(sales_transaction.Quantity *sales_transaction.Unit_Price) AS total_sales_value,
    AVG(Unit_Price) AS average_unit_price,
    MAX(Unit_Price) AS highest_unit_price,
    MIN(Unit_Price) AS lowest_unit_price,
    AVG(Discount) AS average_discount
From sales_transaction
Where Customer_Type in ('Premium' , 'VIP') and
not Payment_Mode = 'Cash' and
Quantity > 1 and
Discount < 20 
Group by Sales_Person, Category
Having sum(sales_transaction.Quantity *sales_transaction.Unit_Price) > 200000
ORDER BY total_sales_value desc;





