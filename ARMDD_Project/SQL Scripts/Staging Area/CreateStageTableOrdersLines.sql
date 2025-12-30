IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'OrdersLines')
BEGIN
    CREATE TABLE dbo.OrdersLines (
        OrderLineID INT,
        OrderID INT,
        ProductID INT,
        SizeID INT,
        Quantity INT,
        LineTotal MONEY
    );
END
ELSE
    TRUNCATE TABLE dbo.OrdersLines;