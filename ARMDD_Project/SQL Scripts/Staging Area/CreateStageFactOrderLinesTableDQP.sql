IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'FactOrderLineDQP')
BEGIN
	CREATE TABLE [dbo].[FactOrderLineDQP]
	(
		[OrderID]        INT,
		[OrderLineID]    INT,
		[OrderDate]      NVARCHAR(20),
		[CustomerID]     INT,
		[SiteID]         INT,
		[ProductID]      INT,
		[SizeID]         INT,
		[CountryCode]    NVARCHAR(5),
		[CurrencyID]     NVARCHAR(10),
		[LineTotal]      MONEY,
		[ShippingCost]  MONEY,
		[DQP]            NVARCHAR(100)
	);
END
ELSE
	TRUNCATE TABLE FactOrderLineDQP;
