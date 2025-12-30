IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'DimCustomer')
BEGIN
    CREATE TABLE dbo.DimCustomer (
        CustomerKey INT IDENTITY(1,1) PRIMARY KEY,
        CustomerID INT NOT NULL,
        CountryName NVARCHAR(255),
        CountryCode NVARCHAR(2),
        EuroZone BIT,
        DateOfBirth DATE,
        Gender NCHAR(1),
        GeographicRegion INT,
        Language NVARCHAR(2),
        VipCustomer BIT,
        StartDate DATE NOT NULL,
        EndDate DATE NULL,
        IsCurrent BIT NOT NULL
    );

    CREATE NONCLUSTERED INDEX IX_DimCustomer_CustomerID
        ON dbo.DimCustomer(CustomerID);
END