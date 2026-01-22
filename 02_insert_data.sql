-- Insert customers
INSERT INTO customers VALUES (1, 'Arun', 'Chennai', DATE '2023-01-05');
INSERT INTO customers VALUES (2, 'Priya', 'Bangalore', DATE '2023-01-10');
INSERT INTO customers VALUES (3, 'Rahul', 'Hyderabad', DATE '2023-01-15');
INSERT INTO customers VALUES (4, 'Sneha', 'Pune', DATE '2023-02-01');
INSERT INTO customers VALUES (5, 'Karthik', 'Chennai', DATE '2023-02-10');
INSERT INTO customers VALUES (6, 'Ananya', 'Mumbai', DATE '2023-02-20');
INSERT INTO customers VALUES (7, 'Vikram', 'Delhi', DATE '2023-03-01');
INSERT INTO customers VALUES (8, 'Divya', 'Coimbatore', DATE '2023-03-10');
INSERT INTO customers VALUES (9, 'Suresh', 'Madurai', DATE '2023-03-20');
INSERT INTO customers VALUES (10, 'Meena', 'Salem', DATE '2023-04-01');
INSERT INTO customers VALUES (11, 'Ravi', 'Trichy', DATE '2023-04-10');
INSERT INTO customers VALUES (12, 'Pooja', 'Erode', DATE '2023-04-20');
INSERT INTO customers VALUES (13, 'Manoj', 'Vellore', DATE '2023-05-01');
INSERT INTO customers VALUES (14, 'Keerthi', 'Tirunelveli', DATE '2023-05-10');
INSERT INTO customers VALUES (15, 'Naveen', 'Thanjavur', DATE '2023-05-20');

-- Insert products
INSERT INTO products VALUES (101, 'Laptop', 'Electronics');
INSERT INTO products VALUES (102, 'Mobile', 'Electronics');
INSERT INTO products VALUES (103, 'Headphones', 'Electronics');
INSERT INTO products VALUES (104, 'Shoes', 'Fashion');
INSERT INTO products VALUES (105, 'T-Shirt', 'Fashion');
INSERT INTO products VALUES (106, 'Jeans', 'Fashion');
INSERT INTO products VALUES (107, 'Refrigerator', 'Appliances');
INSERT INTO products VALUES (108, 'Washing Machine', 'Appliances');
INSERT INTO products VALUES (109, 'Microwave', 'Appliances');
INSERT INTO products VALUES (110, 'Chair', 'Furniture');
INSERT INTO products VALUES (111, 'Table', 'Furniture');
INSERT INTO products VALUES (112, 'Sofa', 'Furniture');
INSERT INTO products VALUES (113, 'Watch', 'Accessories');
INSERT INTO products VALUES (114, 'Backpack', 'Accessories');
INSERT INTO products VALUES (115, 'Sunglasses', 'Accessories');

-- Insert orders
INSERT INTO orders VALUES (1001, 1, DATE '2024-01-05', 50000);
INSERT INTO orders VALUES (1002, 2, DATE '2024-01-06', 20000);
INSERT INTO orders VALUES (1003, 3, DATE '2024-01-07', 1500);
INSERT INTO orders VALUES (1004, 4, DATE '2024-01-10', 3000);
INSERT INTO orders VALUES (1005, 5, DATE '2024-01-12', 2500);
INSERT INTO orders VALUES (1006, 6, DATE '2024-01-15', 40000);
INSERT INTO orders VALUES (1007, 7, DATE '2024-01-18', 12000);
INSERT INTO orders VALUES (1008, 8, DATE '2024-01-20', 1800);
INSERT INTO orders VALUES (1009, 9, DATE '2024-01-22', 2200);
INSERT INTO orders VALUES (1010, 10, DATE '2024-01-25', 3500);
INSERT INTO orders VALUES (1011, 11, DATE '2024-02-01', 6000);
INSERT INTO orders VALUES (1012, 12, DATE '2024-02-03', 7500);
INSERT INTO orders VALUES (1013, 13, DATE '2024-02-05', 9000);
INSERT INTO orders VALUES (1014, 14, DATE '2024-02-07', 11000);
INSERT INTO orders VALUES (1015, 15, DATE '2024-02-10', 13000);

-- Insert order_items
INSERT INTO order_items VALUES (1, 1001, 101, 1, 50000);
INSERT INTO order_items VALUES (2, 1002, 102, 1, 20000);
INSERT INTO order_items VALUES (3, 1003, 103, 1, 1500);
INSERT INTO order_items VALUES (4, 1004, 104, 1, 3000);
INSERT INTO order_items VALUES (5, 1005, 105, 2, 1250);
INSERT INTO order_items VALUES (6, 1006, 107, 1, 40000);
INSERT INTO order_items VALUES (7, 1007, 106, 2, 6000);
INSERT INTO order_items VALUES (8, 1008, 113, 1, 1800);
INSERT INTO order_items VALUES (9, 1009, 114, 1, 2200);
INSERT INTO order_items VALUES (10, 1010, 115, 1, 3500);
INSERT INTO order_items VALUES (11, 1011, 110, 2, 3000);
INSERT INTO order_items VALUES (12, 1012, 111, 1, 7500);
INSERT INTO order_items VALUES (13, 1013, 112, 1, 9000);
INSERT INTO order_items VALUES (14, 1014, 108, 1, 11000);
INSERT INTO order_items VALUES (15, 1015, 109, 1, 13000);

-- Insert payments
INSERT INTO payments VALUES (1, 1001, DATE '2024-01-06', 'Credit Card');
INSERT INTO payments VALUES (2, 1002, DATE '2024-01-07', 'UPI');
INSERT INTO payments VALUES (3, 1003, DATE '2024-01-08', 'Debit Card');
INSERT INTO payments VALUES (4, 1004, DATE '2024-01-11', 'Cash');
INSERT INTO payments VALUES (5, 1005, DATE '2024-01-13', 'UPI');
INSERT INTO payments VALUES (6, 1006, DATE '2024-01-16', 'Net Banking');
INSERT INTO payments VALUES (7, 1007, DATE '2024-01-19', 'Credit Card');
INSERT INTO payments VALUES (8, 1008, DATE '2024-01-21', 'UPI');
INSERT INTO payments VALUES (9, 1009, DATE '2024-01-23', 'Debit Card');
INSERT INTO payments VALUES (10, 1010, DATE '2024-01-26', 'Cash');
INSERT INTO payments VALUES (11, 1011, DATE '2024-02-02', 'Credit Card');
INSERT INTO payments VALUES (12, 1012, DATE '2024-02-04', 'UPI');
INSERT INTO payments VALUES (13, 1013, DATE '2024-02-06', 'Net Banking');
INSERT INTO payments VALUES (14, 1014, DATE '2024-02-08', 'Debit Card');
INSERT INTO payments VALUES (15, 1015, DATE '2024-02-11', 'Credit Card');