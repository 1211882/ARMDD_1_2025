IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'ProductsVideos')
BEGIN
    CREATE TABLE dbo.ProductsVideos (
        ProductVideoID INT,
        VideoURL NVARCHAR(255)
    );
END
ELSE
    TRUNCATE TABLE dbo.ProductsVideos;