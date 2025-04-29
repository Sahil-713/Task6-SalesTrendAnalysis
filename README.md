# 📊 Sales Trend Analysis using SQL

## 🧾 Task 6 – Data Analyst Internship

This project performs a **monthly sales trend analysis** on an `online_sales` dataset using **MySQL**. It includes revenue and order volume tracking using aggregate functions, and identifies the **top 3 performing months** by revenue.

---

## 📌 Objective

To analyze **monthly revenue** and **order volume** by applying SQL aggregation techniques like `SUM()`, `COUNT(DISTINCT)`, `GROUP BY`, and `ORDER BY`.

---

## 🛠️ Tools Used

- **Database:** MySQL
- **Language:** SQL
- **Environment:** MySQL Workbench / phpMyAdmin / XAMPP

---

## 📁 Dataset Overview

Table: `online_sales`

| Column       | Type           | Description             |
|--------------|----------------|-------------------------|
| `order_id`   | INT            | Unique order identifier |
| `order_date` | DATE           | Date of the order       |
| `amount`     | DECIMAL(10,2)  | Revenue from the order  |
| `product_id` | VARCHAR(10)    | Product identifier      |

20 sample records are inserted to simulate an e-commerce sales environment.

---

## 📈 SQL Tasks Performed

### 1. Create Database and Table
```sql
CREATE DATABASE online_sales;
USE online_sales;

CREATE TABLE online_sales (
    order_id INT,
    order_date DATE,
    amount DECIMAL(10,2),
    product_id VARCHAR(10)
);
```

### 2. Insert Sample Data
20 rows of dummy sales data from Jan to Oct 2023.

### 3. Monthly Revenue and Order Volume Analysis
```sql
SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM 
    online_sales
GROUP BY 
    year, month
ORDER BY 
    year, month;
```

### 4. Top 3 Months by Revenue
```sql
SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS monthly_revenue
FROM 
    online_sales
GROUP BY 
    year, month
ORDER BY 
    monthly_revenue DESC
LIMIT 3;
```

---

## 📊 Sample Insights (Based on the Dummy Data)
- March, August, and October had the highest revenues.
- Clear seasonal trends can be observed across months.
---

## 📂 How to Use This Project

1. Clone the repo or download the `.sql` file.
2. Run the script in MySQL.
3. Modify or expand the dataset for deeper insights.

---
## 👤 Author:
    Sahil Singh
📅 **Submission Date:** April 29, 2025
