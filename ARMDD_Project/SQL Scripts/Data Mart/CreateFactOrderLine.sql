IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'FactOrderLine')
BEGIN
    CREATE TABLE dbo.FactOrderLine (
        DateKey INT NOT NULL,
        CustomerKey INT NOT NULL,
        ProductKey INT NOT NULL,
        SiteKey INT NOT NULL,
        SizeKey INT NOT NULL,
        ShipmentKey INT NOT NULL,
        CurrencyKey INT NOT NULL,

        OrderID INT NOT NULL,
        OrderLineID INT NOT NULL,

        Quantity INT NOT NULL,
        LineTotal MONEY,
        Discount MONEY,
        PromotionDiscount MONEY,
        ShippingCostAllocated MONEY,
        TotalLineValue_Local MONEY,
        TotalLineValue_EUR MONEY,

        CONSTRAINT PK_FactOrderLine PRIMARY KEY (
            DateKey,
            CustomerKey,
            ProductKey,
            SiteKey,
            SizeKey,
            OrderID,
            OrderLineID
        )
    );
END