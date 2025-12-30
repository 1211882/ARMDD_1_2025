IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'SitesInfo')
BEGIN
    CREATE TABLE dbo.SitesInfo (
        SiteID INT,
        StoreContact NVARCHAR(255),
        AddressLine1 NVARCHAR(255),
        AddressLine2 NVARCHAR(255),
        Zip_City NVARCHAR(255),
        Phone BIGINT,
        PickupHour INT,
        DailyPickup BIT,
        TimeZone NVARCHAR(255),
        CountryID INT,
        CreateDate DATETIME,
        LastUpdateDate DATETIME
    );
END
ELSE
    TRUNCATE TABLE dbo.SitesInfo;