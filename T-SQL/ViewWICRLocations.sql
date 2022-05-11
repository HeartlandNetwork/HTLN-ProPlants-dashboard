
USE HTLN_ProPlants;
GO

DROP VIEW IF EXISTS  WicrLocations;
GO 

CREATE VIEW WicrLocations
AS
(
SELECT locationid, longitude AS X, latitude AS Y
FROM dbo.Location_ll AS L
WHERE (Left(L.LocationID,4)  = 'WICR'))
GO