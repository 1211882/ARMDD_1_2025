IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'stg_Countries')
BEGIN
    CREATE TABLE dbo.stg_Countries (
        CountryID INT,
        Name NVARCHAR(255),
        Code NVARCHAR(2),
        VAT float,
        EuroZone BIT,
        CreateDate date,
        LastUpdateDate date
    );
END
ELSE
    TRUNCATE TABLE dbo.stg_Countries;