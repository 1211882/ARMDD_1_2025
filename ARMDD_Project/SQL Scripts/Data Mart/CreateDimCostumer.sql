IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'DimCustomer')
BEGIN
    CREATE TABLE dbo.DimCustomer (
        CustomerKey INT IDENTITY(1,1) PRIMARY KEY,
        CustomerID INT NOT NULL,
        CountryName NVARCHAR(255),
        CountryCode NVARCHAR(2),
        EuroZone BIT,
        DateOfBirth DATE,
        [Gender] [nvarchar](6) NOT NULL,
        GeographicRegion INT,
        Language NVARCHAR(2) NULL,
        VipCustomer BIT,
        StartDate DATE NOT NULL,
        EndDate DATE NULL,
        IsCurrent BIT NOT NULL
    );

    CREATE NONCLUSTERED INDEX IX_DimCustomer_CustomerID
        ON dbo.DimCustomer(CustomerID);
END