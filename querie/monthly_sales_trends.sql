SELECT 
    DATE_TRUNC('month', InvoiceDate) AS Month,
    ROUND(SUM(Quantity * UnitPrice), 2) AS Revenue
FROM online_retail
WHERE Quantity > 0
GROUP BY Month
ORDER BY Month;
