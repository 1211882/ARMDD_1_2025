IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'stg_Currencies')
BEGIN
    CREATE TABLE dbo.stg_Currencies (
        CurrencyID INT,
        CurrencyCode NVARCHAR(3),
        CurrencyName NVARCHAR(50),
        CurrencySymbol NVARCHAR(5)
    );
END
ELSE
    TRUNCATE TABLE dbo.stg_Currencies;