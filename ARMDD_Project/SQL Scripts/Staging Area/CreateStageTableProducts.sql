IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'Products')
BEGIN
    CREATE TABLE dbo.Products (
        ProductID INT,
        Description NVARCHAR(255),
        CategoryID INT,
        BoxID INT,
        AvailablePortal BIT,
        Active BIT,
        ProductVideoID INT,
        CreateDate DATETIME,
        LastUpdateDate DATETIME
    );
END
ELSE
    TRUNCATE TABLE dbo.Products;