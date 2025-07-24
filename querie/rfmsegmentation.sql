WITH RFM AS (
  SELECT 
    CustomerID,
    MAX(InvoiceDate) AS LastPurchase,
    COUNT(DISTINCT InvoiceNo) AS Frequency,
    SUM(Quantity * UnitPrice) AS Monetary
  FROM online_retail
  WHERE Quantity > 0 AND CustomerID IS NOT NULL
  GROUP BY CustomerID
),
Scored AS (
  SELECT *,
    DATE_PART('day', MAX(InvoiceDate) OVER () - LastPurchase) AS Recency,
    NTILE(4) OVER (ORDER BY DATE_PART('day', MAX(InvoiceDate) OVER () - LastPurchase)) AS R_Score,
    NTILE(4) OVER (ORDER BY Frequency DESC) AS F_Score,
    NTILE(4) OVER (ORDER BY Monetary DESC) AS M_Score
  FROM RFM
)
SELECT *,
    CONCAT(R_Score, F_Score, M_Score) AS RFM_Segment
FROM Scored;
