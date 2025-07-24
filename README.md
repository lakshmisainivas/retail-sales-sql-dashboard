🌟 Retail Sales SQL Project: Real-World Insights with Online Retail Data

💼 Project Summary

This project explores real-world e-commerce data using advanced SQL techniques to generate actionable insights for business decisions.

We use the Online Retail dataset from a UK-based e-commerce store to:

Identify top-performing products

Detect customer churn patterns

Visualize sales trends over time

Segment customers using RFM (Recency, Frequency, Monetary)

Analyze behavior by cohorts

Compare performance across regions

The goal is to simulate a data analyst's job role in a business environment.

📂 Dataset Description

File: data/online_retail.csv

This dataset contains 500,000+ transaction records from a UK-based online retail store between Dec 2010 and Dec 2011.

Column

Description

InvoiceNo

Unique invoice (cancellation starts with 'C')

StockCode

Product code

Description

Product name

Quantity

Number of items purchased (negative = return)

InvoiceDate

Purchase date and time

UnitPrice

Price per item

CustomerID

Unique customer identifier

Country

Country of customer

⚙️ SQL Features Demonstrated

GROUP BY, ORDER BY, JOIN

CTE (Common Table Expressions)

WINDOW FUNCTIONS: RANK, LAG, NTILE

CASE WHEN logic

Aggregations and subqueries

🔹 Folders and Files

retail_sql_project/
├── data/
│   └── online_retail.csv           # Raw dataset in CSV format
├── queries/                        # SQL insights (standalone files)
│   ├── top_selling_products.sql
│   ├── customer_churn.sql
│   ├── monthly_sales_trends.sql
│   ├── cohort_analysis.sql
│   ├── rfm_segmentation.sql
│   └── regional_performance.sql
└── README.md                       # Project explanation and insights

🔢 SQL Insight 1: Top-Selling Products

What it does: Identifies the top products by total quantity sold. This helps prioritize stocking decisions and focus marketing on high-demand items.

Why it's useful: Popular products often drive a significant portion of revenue. Understanding top sellers helps with promotions, bundle offers, and optimizing shelf space.

Concepts used: Filtering returns, grouping by product, ordering by totals.

🔢 SQL Insight 2: Customer Churn Detection

What it does: Classifies customers as New, Active, or Churned & Returned based on gaps in their monthly purchase history.

Why it's useful: Churn analysis helps businesses understand how often they lose and regain customers, which is essential for improving customer retention.

Concepts used: CTEs, LAG() function, CASE logic, temporal difference.

🔢 SQL Insight 3: Monthly Sales Trends

What it does: Calculates total revenue for each month across the dataset timeframe.

Why it's useful: Allows businesses to see seasonal patterns, growth trends, or dips, which can inform promotions and sales forecasts.

Concepts used: Time truncation, revenue aggregation, ordering.

🔢 SQL Insight 4: Cohort Analysis

What it does: Groups customers by their first purchase month and tracks how many of them return in the following months.

Why it's useful: This reveals long-term retention behavior and helps understand the lifetime value of each customer cohort.

Concepts used: CTEs, joining self-subsets, cohort indexing.

🔢 SQL Insight 5: RFM Segmentation

What it does: Assigns each customer a score based on how recently they purchased (Recency), how often (Frequency), and how much they spent (Monetary).

Why it's useful: Enables marketers to tailor messages for high-value customers, inactive users, or loyal shoppers using their RFM segment.

Concepts used: Aggregations, NTILE() window function, composite scoring.

🔢 SQL Insight 6: Regional Performance

What it does: Compares revenue and order volume across countries.

Why it's useful: Identifies strong and weak performing regions, helping businesses prioritize where to expand or cut back.

Concepts used: Grouping by country, summing revenue, counting invoices.

🚀 Real-World Impact

🏦 Inventory Optimization: Stock bestsellers to improve turnover.

🤝 Customer Retention: Detect churn and build re-engagement strategies.

📊 Marketing Targeting: Use RFM and region data to focus campaigns.

🎓 Who Should Try This?

Aspiring data analysts looking to showcase real SQL projects.

Students building portfolios for internships.

Anyone preparing for SQL case studies in interviews.

📚 Credits

Dataset: UCI Machine Learning Repository (Online Retail Dataset)
