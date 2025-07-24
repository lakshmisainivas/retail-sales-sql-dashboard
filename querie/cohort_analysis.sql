WITH FirstPurchase AS (
    SELECT 
        CustomerID,
        MIN(DATE_TRUNC('month', InvoiceDate)) AS CohortMonth
    FROM online_retail
    WHERE CustomerID IS NOT NULL
    GROUP BY CustomerID
),
CustomerOrders AS (
    SELECT 
        CustomerID,
        DATE_TRUNC('month', InvoiceDate) AS OrderMonth
    FROM online_retail
    WHERE CustomerID IS NOT NULL
)
SELECT 
    fp.CohortMonth,
    co.OrderMonth,
    COUNT(DISTINCT co.CustomerID) AS Customers
FROM FirstPurchase fp
JOIN CustomerOrders co
  ON fp.CustomerID = co.CustomerID
GROUP BY fp.CohortMonth, co.OrderMonth
ORDER BY fp.CohortMonth, co.OrderMonth;
