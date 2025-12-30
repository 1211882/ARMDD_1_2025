IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'Boxes')
BEGIN
    CREATE TABLE dbo.Boxes (
        BoxID INT,
        BoxName NVARCHAR(255),
        BoxHeight FLOAT,
        BoxLength FLOAT,
        BoxWidth FLOAT,
        BoxVolWeight FLOAT,
        BoxLocation FLOAT
    );
END
ELSE
    TRUNCATE TABLE dbo.Boxes;