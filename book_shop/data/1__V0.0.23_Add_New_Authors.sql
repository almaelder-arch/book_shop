use book_shop
go

CREATE TABLE #temp_author(
	f_name NVARCHAR(30),
	l_name NVARCHAR(30)
)

INSERT INTO #temp_author(f_name,l_name)
VALUES('Brandon','Sanders'),
('James','Joyce'),
('Lewis','Carroll')

BEGIN TRY

	INSERT INTO dbo.author(first_name,last_name)
	SELECT ta.f_name, ta.l_name
	FROM #temp_author ta
	LEFT JOIN dbo.author a ON a.first_name = ta.f_name AND a.last_name = ta.l_name
	WHERE a.first_name IS NULL and a.last_name IS NULL

END TRY
BEGIN CATCH
	THROW;
END CATCH

DROP TABLE #temp_author