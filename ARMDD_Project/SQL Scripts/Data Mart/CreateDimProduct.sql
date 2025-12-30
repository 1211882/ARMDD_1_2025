IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'DimProduct')
BEGIN
    CREATE TABLE dbo.DimProduct (
        ProductKey INT IDENTITY(1,1) PRIMARY KEY,
        ProductID INT NOT NULL,
        Description NVARCHAR(255),
        CategoryName NVARCHAR(255),
        CategoryGender NCHAR(1),
        AvailablePortal BIT,
        BoxName NVARCHAR(255),
        BoxHeight FLOAT,
        BoxLength FLOAT,
        BoxWidth FLOAT,
        BoxVolWeight FLOAT,
        BoxLocation FLOAT,
        Active BIT,
        ProductVideoID INT,
        StartDate DATE NOT NULL,
        EndDate DATE NULL,
        IsCurrent BIT NOT NULL
    );

    CREATE NONCLUSTERED INDEX IX_DimProduct_ProductID
        ON dbo.DimProduct(ProductID);
END