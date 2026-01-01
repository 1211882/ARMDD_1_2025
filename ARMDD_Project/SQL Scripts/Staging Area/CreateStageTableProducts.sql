IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'stg_Products')
BEGIN
    CREATE TABLE dbo.stg_Products (
        ProductID INT,
        Description NVARCHAR(255),
        CategoryID INT,
        BoxID INT,
        AvailablePortal BIT,
        Active BIT,
        CreateDate DATETIME,
        LastUpdateDate DATETIME
    );
END
ELSE
    TRUNCATE TABLE dbo.stg_Products;