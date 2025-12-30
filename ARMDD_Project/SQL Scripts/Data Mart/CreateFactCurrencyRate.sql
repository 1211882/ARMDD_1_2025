IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'FactCurrencyRate')
BEGIN
    CREATE TABLE dbo.FactCurrencyRate (
        FactCurrencyRateKey INT IDENTITY(1,1) PRIMARY KEY,
        DateKey INT NOT NULL,
        SourceCurrency INT NOT NULL,
        TargetCurrency INT NOT NULL,
        ExchangeRate FLOAT NOT NULL
    );
END