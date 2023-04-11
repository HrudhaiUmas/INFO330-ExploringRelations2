-- What was the most purchased track of 2013?
SELECT t.Name AS MostPurchasedTrack, SUM(it.Quantity) AS TotalTrackPurchases 
FROM tracks AS t , invoice_items AS it , invoices AS i 
WHERE it.TrackId = t.TrackId  AND it.InvoiceId = i.InvoiceId
AND strftime('%Y', i.InvoiceDate) = '2013'
GROUP BY t.name
ORDER BY TotalTrackPurchases DESC