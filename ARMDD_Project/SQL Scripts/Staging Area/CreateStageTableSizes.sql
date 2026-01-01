IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'stg_Sizes')
BEGIN
    CREATE TABLE dbo.stg_Sizes (
        SizeID INT,
        Name NVARCHAR(50),
        FriendlyName NVARCHAR(50),
        RetailInvisible BIT,
        MinimumSizeAvailable INT,
        MaximumSizeAvailable INT
    );
END
ELSE
    TRUNCATE TABLE dbo.stg_Sizes;