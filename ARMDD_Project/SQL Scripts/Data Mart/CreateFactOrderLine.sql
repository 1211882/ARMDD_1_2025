IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'FactOrderLine')
BEGIN
    CREATE TABLE dbo.FactOrderLine (
        FactOrderLineKey INT IDENTITY(1,1) PRIMARY KEY,

        ShipmentKey INT NOT NULL,
        CustomerKey INT NOT NULL,
        ProductKey INT NOT NULL,
        SiteKey INT NOT NULL,
        SizeKey INT NOT NULL,
        DateKey INT NOT NULL,
        CurrencyKey INT NOT NULL,

        OrderID INT NOT NULL,
        OrderLineID INT NOT NULL,

        Quantity INT NOT NULL,
        LineTotal MONEY,
        Discount MONEY,
        PromotionDiscount MONEY,
        ShippingCostAllocated MONEY,

        TotalLineValue_Local MONEY,
        TotalLineValue_EUR MONEY
    );
END