IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'Categories')
BEGIN
    CREATE TABLE dbo.Categories (
        CategoryID INT,
        CategoryName NVARCHAR(255),
        CategoryGender NCHAR(1)
    );
END
ELSE
    TRUNCATE TABLE dbo.Categories;