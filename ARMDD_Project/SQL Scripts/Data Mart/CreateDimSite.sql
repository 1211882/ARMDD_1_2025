IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'DimSite')
BEGIN
    CREATE TABLE dbo.DimSite (
        SiteKey INT IDENTITY(1,1) PRIMARY KEY,
        SiteID INT NOT NULL,
        SiteName NVARCHAR(255),
        SiteURL NVARCHAR(255),
        Initials NVARCHAR(3),
        Currency NVARCHAR(3),
        TimeZone NVARCHAR(255),
        CountryName NVARCHAR(255),
        CountryCode NVARCHAR(2),
        EuroZone BIT,
        StartDate DATE NOT NULL,
        EndDate DATE NULL,
        IsCurrent BIT NOT NULL
    );

    CREATE NONCLUSTERED INDEX IX_DimSite_SiteID
        ON dbo.DimSite(SiteID);
END