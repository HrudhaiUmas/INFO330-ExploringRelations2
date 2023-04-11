-- Show the sales agent's full name and invoices associated with each sales agent.
SELECT  e.FirstName || '  ' || e.LastName AS FullName, in1.InvoiceId 
FROM employees AS e, invoices AS in1, customers AS c1 
WHERE e.EmployeeId = c1.SupportRepId AND c1.CustomerId = in1.CustomerId 
ORDER BY e.FirstName, e.LastName;