SELECT 
    Country,
    COUNT(DISTINCT InvoiceNo) AS TotalOrders,
    ROUND(SUM(Quantity * UnitPrice), 2) AS Revenue
FROM online_retail
WHERE Quantity > 0
GROUP BY Country
ORDER BY Revenue DESC;
