




USE HTLN_ProPlants;
GO

DROP VIEW IF EXISTS ArpoPlantCover;
GO 

CREATE VIEW ArpoPlantCover
AS
(
SELECT F.locationid, SUBSTRING(F.periodid, 11, 4) AS sampleyear, 
    T.commonname, T.scientificname, 
    F.coverclass, L.longitude AS X, L.latitude AS Y
FROM dbo.FieldData AS F
INNER JOIN dbo.Location_ll AS L
ON L.locationid = F.locationid
INNER JOIN lut.TaxaReference AS T
ON F.species = T.acceptedsymbol
WHERE (Left(L.LocationID,4)  = 'ARPO'))
GO


