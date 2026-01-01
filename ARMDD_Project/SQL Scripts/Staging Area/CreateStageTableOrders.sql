IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'stg_Orders')
BEGIN
    CREATE TABLE dbo.stg_Orders (
        OrderID INT,
        CustomerID INT,
        SiteID INT,
        OrderDate DATE,
        ShippingCost MONEY,
        Currency NVARCHAR(3),
        CreateDate DATETIME,
        LastUpdateDate DATETIME
    );
END
ELSE
    TRUNCATE TABLE dbo.stg_Orders;