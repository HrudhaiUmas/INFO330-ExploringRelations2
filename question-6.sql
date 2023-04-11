-- Find tracks (id, name and composer) that are part of a line in an invoice.
SELECT t.TrackId AS TrackId, t.Name AS TrackName, t.Composer AS TrackComposer
FROM tracks AS t, invoice_items AS it 
WHERE t.TrackId = it.TrackId 
GROUP BY t.TrackId 
ORDER BY t.TrackId ASC;

