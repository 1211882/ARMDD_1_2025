IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'DimSite')
BEGIN
    CREATE TABLE dbo.DimSite (
        SiteKey INT IDENTITY(1,1) PRIMARY KEY,
        SiteID INT NOT NULL,
        SiteName NVARCHAR(255) NOT NULL,
        SiteURL NVARCHAR(255) NOT NULL,
        Initials NVARCHAR(3) NOT NULL,
        Currency NVARCHAR(3) NOT NULL,
        StoreContact NVARCHAR(255) NOT NULL,
        AddressLine1 NVARCHAR(255) NOT NULL,
        AddressLine2 NVARCHAR(255) NULL,
        Zip_City NVARCHAR(255) NOT NULL,
        Phone BIGINT NOT NULL,
        PickupHour int NOT NULL,
        DailyPickup BIT NOT NULL,
        TimeZone NVARCHAR(255) NOT NULL,
        CountryName NVARCHAR(255) NOT NULL,
        CountryCode NVARCHAR(2) NOT NULL,
        EuroZone BIT NOT NULL,
        StartDate DATE NOT NULL,
        EndDate DATE NULL,
        IsCurrent BIT NOT NULL
    );

    CREATE NONCLUSTERED INDEX IX_DimSite_SiteID
        ON dbo.DimSite(SiteID);
END