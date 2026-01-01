IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'stg_OrdersLinesDetails')
BEGIN
    CREATE TABLE dbo.stg_OrdersLinesDetails (
        OrderLineID INT,
        Discount MONEY,
        PromotionDiscount MONEY
    );
END
ELSE
    TRUNCATE TABLE dbo.stg_OrdersLinesDetails;