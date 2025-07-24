WITH CustomerMonths AS (
  SELECT 
    CustomerID,
    DATE_TRUNC('month', InvoiceDate) AS Month
  FROM online_retail
  WHERE CustomerID IS NOT NULL
  GROUP BY CustomerID, DATE_TRUNC('month', InvoiceDate)
),
ActivityGap AS (
  SELECT 
    CustomerID,
    Month,
    LAG(Month) OVER (PARTITION BY CustomerID ORDER BY Month) AS PrevMonth
  FROM CustomerMonths
)
SELECT 
  CustomerID,
  Month,
  CASE 
    WHEN PrevMonth IS NULL THEN 'New'
    WHEN DATE_PART('month', Month - PrevMonth) > 1 THEN 'Churned and Returned'
    ELSE 'Active'
  END AS Status
FROM ActivityGap;
