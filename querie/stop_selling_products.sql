SELECT 
    Description,
    SUM(Quantity) AS TotalSold
FROM online_retail
WHERE Quantity > 0
GROUP BY Description
ORDER BY TotalSold DESC
LIMIT 10;
