-- Provide a query that includes the purchased track name AND artist name with each invoice line item.
SELECT i.InvoiceLineId, t.Name AS PurchasedTrackName,  a.Name AS ArtistName 
FROM tracks AS t, artists AS a, invoice_items as i,  albums as al 
WHERE i.TrackId = t.TrackId AND t.AlbumId = al.AlbumId AND al.ArtistId = a.ArtistId 
ORDER BY i.InvoiceLineId;