-- Which sales agent made the most in sales in 2010?
SELECT e.FirstName || ' ' || e.LastName AS FullName, SUM(i.Total) AS TotalSales 
FROM employees AS e, customers AS c, invoices AS i 
WHERE i.CustomerId = c.CustomerId AND c.SupportRepId = e.EmployeeId AND strftime('%Y',  InvoiceDate) = '2010'
GROUP BY e.EmployeeId 
ORDER BY TotalSales DESC 
LIMIT 1; 