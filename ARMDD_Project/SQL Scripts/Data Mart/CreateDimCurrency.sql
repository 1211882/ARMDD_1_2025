IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'DimCurrency')
BEGIN
    CREATE TABLE dbo.DimCurrency (
        CurrencyKey INT IDENTITY(1,1) PRIMARY KEY,
        CurrencyID INT NOT NULL,
        CurrencyName NVARCHAR(20),
        CurrencySymbol NVARCHAR(3)
    );

    CREATE NONCLUSTERED INDEX IX_DimCurrency_CurrencyID
        ON dbo.DimCurrency(CurrencyID);
END