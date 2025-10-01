# Sales Trend Analysis Using Aggregations

## 📌 Project Overview
This project focuses on analyzing **monthly revenue and order volume** from online sales data using SQL.  
The goal is to explore sales trends over time and extract insights into products, categories, and customer locations.

**Key Objectives:**
- Analyze monthly revenue and order volume.
- Identify yearly sales trends.
- Highlight top-performing months, products, and categories.
- Derive insights on customer geography and average turnover.

---

## 📂 Repository Contents
This repository contains the following files:

- **`sales_data.csv`** → The original dataset containing online sales records.  
- **`task6onlinesales.sql`** → SQL script with all queries for trend analysis.  
- **`/screenshots/`** → screenshots of query results for reference.  

---

## 🛠️ Tools & Technologies
- **Database:** SQLite (queries compatible with PostgreSQL/MySQL with slight syntax changes)  
- **Language:** SQL  
- **Dataset:** Online sales transactions  

---

## 📊 SQL Queries Included
The script `task6onlinesales.sql` contains the following queries:

1. **(Skipped)** Basic setup of dataset.  
2. **Monthly Revenue and Order Volume** → Revenue & order count grouped by year/month.  
3. **Revenue Trend for a Specific Year (2019)** → Filtered sales trend analysis for 2019.  
4. **Top 3 Months by Revenue** → Highest-earning months overall.  
5. **Total Revenue and Order Count per Product** → Product-wise performance.  
6. **Total Revenue and Order Count per Category** → Category-level sales insights.  
7. **Average Turnover per Order per Month** → Understanding order value trends.  
8. **Total Orders per Month** → Monthly order distribution.  
9. **Total Revenue per City** → Regional revenue breakdown.  
10. **Top 5 Products by Revenue** → Highest-earning products.  

---

## 🚀 How to Use
1. Import the dataset `sales_data.csv` into your database as table `online_sales`.  
   - Ensure the first row is treated as column names.  
2. Run the queries from **`task6onlinesales.sql`** in SQLite (or adapt to MySQL/PostgreSQL if needed).  
3. Refer to `/screenshots/` to view the outputs of each query.  

---

## ✅ Deliverables
- SQL Script (`task6onlinesales.sql`)  
- Dataset (`sales_data.csv`)  
- Screenshots of query outputs  

**Outcome:**  
Learn how to group data, aggregate results, and analyze **sales trends over time** using SQL.  

---
