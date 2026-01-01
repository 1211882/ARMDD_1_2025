IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'stg_ProductsVideos')
BEGIN
    CREATE TABLE dbo.stg_ProductsVideos (
        ProductID int,
        ProductVideoID INT,
        Status bit,
        CreateDate date,
        LastUpdateDate date
    );
END
ELSE
    TRUNCATE TABLE dbo.stg_ProductsVideos;