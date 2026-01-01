IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'stg_OrdersLines')
BEGIN
    CREATE TABLE dbo.stg_OrdersLines (
        OrderLineID INT,
        OrderID INT,
        ProductID INT,
        SizeID INT,
        Quantity INT,
        LineTotal MONEY,
        CreateDate date,
        LastUpdateDate date
    );
END
ELSE
    TRUNCATE TABLE dbo.stg_OrdersLines;