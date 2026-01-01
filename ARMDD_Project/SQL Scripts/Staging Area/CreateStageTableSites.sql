IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'stg_Sites')
BEGIN
    CREATE TABLE dbo.stg_Sites (
        SiteID INT,
        Name NVARCHAR(255),
        SiteURL NVARCHAR(255),
        SiteName NVARCHAR(255),
        Initials NVARCHAR(3),
        Currency NVARCHAR(3),
        IsSite BIT,
        CreateDate DATETIME,
        LastUpdateDate DATETIME
    );
END
ELSE
    TRUNCATE TABLE dbo.stg_Sites;