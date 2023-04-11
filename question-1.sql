-- Show the customer's full name, Invoice ID, Date of the invoice and billing country of customers who are from Brazil.
SELECT t1.FirstName || ' ' || t1.LastName AS FullName, t2.InvoiceID, t2.InvoiceDate, t2.BillingCountry 
FROM customers AS t1, invoices AS t2 
WHERE t1.CustomerId = t2.CustomerId AND t2.BillingCountry='Brazil' 
ORDER BY t1.CustomerID;
