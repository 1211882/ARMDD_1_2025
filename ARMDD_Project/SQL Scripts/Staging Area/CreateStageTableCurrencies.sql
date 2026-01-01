IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'stg_Currencies')
BEGIN
    CREATE TABLE dbo.stg_Currencies (
        CurrencyID NVARCHAR(3),
        CurrencyName NVARCHAR(20),
        CurrencySymbol NVARCHAR(3),
        CreateDate date,
        LastUpdateDate date
    );
END
ELSE
    TRUNCATE TABLE dbo.stg_Currencies;