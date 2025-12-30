IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'DimShipment')
BEGIN
    CREATE TABLE dbo.DimShipment (
        ShipmentKey INT IDENTITY(1,1) PRIMARY KEY,
        ShipmentID INT NOT NULL,
        CountryName NVARCHAR(255),
        CountryCode NVARCHAR(2),
        EuroZone BIT,
        Address NVARCHAR(255),
        City NVARCHAR(255),
        State NVARCHAR(255),
        Zip NVARCHAR(20)
    );

    CREATE NONCLUSTERED INDEX IX_DimShipment_ShipmentID
        ON dbo.DimShipment(ShipmentID);
END