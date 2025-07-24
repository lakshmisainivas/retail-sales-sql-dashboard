# 🧠 Retail Sales Intelligence Dashboard using SQL

A project focused on uncovering key insights from retail sales data using SQL, simulating real-world analytics in e-commerce and FMCG domains.

---

## ✅ Objective

To empower businesses with SQL-driven insights that help optimize:

- 📦 Inventory Management
- 🛒 Product Promotion
- 👥 Customer Retention
- 💰 Revenue Growth

---

## 📦 Dataset

Synthetic retail sales dataset (or use [UCI Online Retail Dataset](https://archive.ics.uci.edu/ml/datasets/Online+Retail)) with fields like:

- `InvoiceNo`, `CustomerID`, `InvoiceDate`, `Country`, `Product`, `Quantity`, `UnitPrice`, `Revenue`

---

## 🔍 Key SQL Queries

### 1. Total Revenue by Month
```sql
SELECT DATE_TRUNC('month', InvoiceDate) AS Month, SUM(Revenue) AS Total_Revenue
FROM RetailSales
GROUP BY Month
ORDER BY Month;
