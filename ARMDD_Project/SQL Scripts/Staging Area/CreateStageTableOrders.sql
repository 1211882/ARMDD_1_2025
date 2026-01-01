IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'stg_Orders')
BEGIN
    CREATE TABLE dbo.stg_Orders (
        OrderID INT,
        CustomerID INT,
        SiteID INT,
        OrderDate DATE,
        CountryID int,
        Address NVARCHAR(255),
        ShippingCost MONEY,
        City NVARCHAR(255),
        State NVARCHAR(255),
        Zip float,
        CurrencyID NVARCHAR(3),
        CreateDate DATETIME,
        LastUpdateDate DATETIME
    );
END
ELSE
    TRUNCATE TABLE dbo.stg_Orders;