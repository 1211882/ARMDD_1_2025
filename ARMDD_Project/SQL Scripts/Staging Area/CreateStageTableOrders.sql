IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'Orders')
BEGIN
    CREATE TABLE dbo.Orders (
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
    TRUNCATE TABLE dbo.Orders;