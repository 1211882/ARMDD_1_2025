IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'DimSize')
BEGIN
    CREATE TABLE dbo.DimSize (
        SizeKey INT IDENTITY(1,1) PRIMARY KEY,
        SizeID INT NOT NULL,
        Name NVARCHAR(255),
        FriendlyName NVARCHAR(255),
        RetailInvisible BIT,
        MinimumSizeAvailable INT,
        MaximumSizeAvailable INT
    );

    CREATE NONCLUSTERED INDEX IX_DimSize_SizeID
        ON dbo.DimSize(SizeID);
END