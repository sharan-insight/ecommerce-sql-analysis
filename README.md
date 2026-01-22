 E-Commerce Sales and Customer Behavior Analysis (SQL)

 Project Overview

This project focuses on analyzing e-commerce sales data using SQL (MySQL) to derive meaningful business insights. The goal is to understand customer behavior, product performance, sales trends, and payment patterns through structured queries.

The project simulates a real-world e-commerce database and demonstrates how a Data Analyst works with relational databases, designs schemas, and performs analytical queries to support business decision-making.

Database Schema

The database is designed using a normalized relational model with the following tables:

 1. Customers

- Stores customer details such as name, city, and joining date
- One customer can place multiple orders

 2. Orders

- Stores order-level information
- Each order belongs to one customer

 3. Order_Items

- Bridge table between orders and products
- Resolves the many-to-many relationship between orders and products

 4. Products

- Stores product details and categories
- Used for product and category-level analysis

 5. Payments

- Stores payment details for each order
- Each order has one payment record

An ER Diagram is included in the repository to visually represent relationships between tables.

Tools Used:

- Database: MySQL
- Query Editor: MySQL Workbench / VS Code
- Version Control: Git & GitHub

Key Analyses Performed

The following business analyses were performed using SQL queries:

- Total and monthly sales analysis
- Top customers based on total spending
- Category-wise revenue analysis
- Repeat vs new customer identification
- Highest-selling products per category
- Payment mode usage analysis
- Orders without corresponding payments
- Customers who never placed orders

These analyses help in understanding revenue trends, customer value, and product performance.

Sample SQL Queries

 Total Sales Per Month

```sql
SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(order_amount) AS total_sales
FROM orders
GROUP BY EXTRACT(YEAR FROM order_date), EXTRACT(MONTH FROM order_date)
ORDER BY year, month;
```

 Top 5 Customers by Spending

```sql
SELECT customer_id, SUM(order_amount) AS total_spent
FROM orders
GROUP BY customer_id
ORDER BY total_spent DESC
FETCH FIRST 5 ROWS ONLY;
```

 Highest Selling Product in Each Category

```sql
SELECT category, product_name, total_quantity
FROM (
    SELECT p.category,
           p.product_name,
           SUM(oi.quantity) AS total_quantity,
           RANK() OVER (PARTITION BY p.category ORDER BY SUM(oi.quantity) DESC) AS rnk
    FROM order_items oi
    JOIN products p ON oi.product_id = p.product_id
    GROUP BY p.category, p.product_name
)
WHERE rnk = 1;
```

Project Structure
```
ecommerce-sql-analysis/
│
├── 01_create_tables.sql
├── 02_insert_data.sql
├── 03_analysis_queries.sql
├── 04_insights.md
├── ER_Diagram.png
└── README.md
```

Key Learnings

- Designed a normalized relational database schema
- Applied SQL joins, subqueries, aggregations, and window functions
- Converted raw data into meaningful business insights
- Gained hands-on experience with real-world analytical queries

Conclusion

This project demonstrates practical SQL skills required for a Data Analyst role, including database design, data analysis, and insight generation. It is suitable for showcasing SQL proficiency on resumes, GitHub, and during interviews.