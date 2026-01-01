IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'stg_ProductsVideos')
BEGIN
    CREATE TABLE dbo.stg_ProductsVideos (
        ProductVideoID INT,
        VideoURL NVARCHAR(255)
    );
END
ELSE
    TRUNCATE TABLE dbo.stg_ProductsVideos;