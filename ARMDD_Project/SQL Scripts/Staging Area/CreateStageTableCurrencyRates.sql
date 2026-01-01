IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'stg_CurrencyRates')
BEGIN
    CREATE TABLE dbo.stg_CurrencyRates (
        RateDate DATE,
        SourceCurrency NVARCHAR(3),
        TargetCurrency NVARCHAR(3),
        ExchangeRate FLOAT
    );
END
ELSE
    TRUNCATE TABLE dbo.stg_CurrencyRates;