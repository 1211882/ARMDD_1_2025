IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'Customers')
BEGIN
    CREATE TABLE dbo.Customers (
        CustomerID INT,
        CountryID INT,
        DateOfBirth DATE,
        Gender NCHAR(1),
        GeographicRegion INT,
        Language NVARCHAR(2),
        VipCustomer BIT,
        CreateDate DATETIME,
        LastUpdateDate DATETIME
    );
END
ELSE
    TRUNCATE TABLE dbo.Customers;