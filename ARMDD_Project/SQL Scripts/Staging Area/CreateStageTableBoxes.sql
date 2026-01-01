IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'stg_Boxes')
BEGIN
    CREATE TABLE dbo.stg_Boxes (
        BoxID INT,
        BoxName NVARCHAR(255),
        BoxHeight FLOAT,
        BoxLength FLOAT,
        BoxWidth FLOAT,
        BoxVolWeight FLOAT,
        BoxLocation NVARCHAR(255)
    );
END
ELSE
    TRUNCATE TABLE dbo.stg_Boxes;