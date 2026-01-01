IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'stg_Categories')
BEGIN
    CREATE TABLE dbo.stg_Categories (
        CategoryID INT,
        CategoryName NVARCHAR(255),
        CategoryGender NCHAR(1),
        CreateDate date,
        LastUpdateDate date
    );
END
ELSE
    TRUNCATE TABLE dbo.stg_Categories;