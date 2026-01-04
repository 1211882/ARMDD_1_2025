IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'stg_CustomersDQP')
BEGIN
    CREATE TABLE dbo.stg_CustomersDQP (
        CustomerID INT,
        CountryID INT,
        DateOfBirth DATE,
        Gender NCHAR(6),
        GeographicRegion INT,
        Language NVARCHAR(2),
        VipCustomer BIT,
        CreateDate DATETIME,
        LastUpdateDate DATETIME,
        DQP nvarchar(100)
    );
END
ELSE
    TRUNCATE TABLE dbo.stg_CustomersDQP;