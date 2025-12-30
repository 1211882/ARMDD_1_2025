IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'DimDate')
BEGIN
    CREATE TABLE dbo.DimDate (
        DateKey INT NOT NULL PRIMARY KEY,
        FullDate DATE NOT NULL,
        [Year] INT NOT NULL,
        [Month] INT NOT NULL,
        MonthName VARCHAR(20) NOT NULL,
        [Quarter] INT NOT NULL,
        [Day] INT NOT NULL,
        DayOfWeek INT NOT NULL,
        DayName VARCHAR(20) NOT NULL,
        WeekOfYear INT NOT NULL,
        Season VARCHAR(20) NOT NULL
    );
END