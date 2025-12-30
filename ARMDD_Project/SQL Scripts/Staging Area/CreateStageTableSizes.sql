IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'Sizes')
BEGIN
    CREATE TABLE dbo.Sizes (
        SizeID INT,
        Name NVARCHAR(50),
        FriendlyName NVARCHAR(50),
        RetailInvisible BIT,
        MinimumSizeAvailable INT,
        MaximumSizeAvailable INT
    );
END
ELSE
    TRUNCATE TABLE dbo.Sizes;