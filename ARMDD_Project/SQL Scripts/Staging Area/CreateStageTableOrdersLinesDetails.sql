IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'stg_OrdersLinesDetails')
BEGIN
    CREATE TABLE dbo.stg_OrdersLinesDetails (
        OrderLineID INT,
        Currency NVARCHAR(3),
        Discount MONEY,
        PromotionDiscount MONEY,
        CreateDate date,
        LastUpdateDate date
    );
END
ELSE
    TRUNCATE TABLE dbo.stg_OrdersLinesDetails;