IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'Language_Lookup')
BEGIN
    CREATE TABLE dbo.Language_Lookup (
        [Language] NVARCHAR(2) NULL,
        LanguageDescription NVARCHAR(20) NOT NULL
    );

    INSERT dbo.Language_Lookup VALUES (NULL, N'Unknown');
    INSERT dbo.Language_Lookup VALUES (N'EN', N'English');
    INSERT dbo.Language_Lookup VALUES (N'US', N'English');
    INSERT dbo.Language_Lookup VALUES (N'BR', N'Brazilian');
    INSERT dbo.Language_Lookup VALUES (N'FR', N'French');
END