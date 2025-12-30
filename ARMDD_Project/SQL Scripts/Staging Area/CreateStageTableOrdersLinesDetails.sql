IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'OrdersLinesDetails')
BEGIN
    CREATE TABLE dbo.OrdersLinesDetails (
        OrderLineID INT,
        Discount MONEY,
        PromotionDiscount MONEY
    );
END
ELSE
    TRUNCATE TABLE dbo.OrdersLinesDetails;