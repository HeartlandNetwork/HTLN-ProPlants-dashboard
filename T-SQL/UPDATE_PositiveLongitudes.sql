

USE HTLN_ProPlants;

UPDATE dbo.Location_ll  
SET dbo.Location_ll.longitude = dbo.Location_ll.longitude * -1
FROM dbo.Location_ll   
WHERE longitude > 0
GO 
