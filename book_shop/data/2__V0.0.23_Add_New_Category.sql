use book_shop
go

CREATE TABLE #temp_cat(
	c_code NVARCHAR(30),
	c_desc NVARCHAR(30)
)

INSERT INTO #temp_cat(c_code,c_desc)
VALUES('BIO','Biography')

BEGIN TRY

	INSERT INTO dbo.category(category_code,category_desc)
	SELECT tc.c_code, tc.c_desc
	FROM #temp_cat tc
	LEFT JOIN dbo.category c ON c.category_code = tc.c_code AND c.category_desc = tc.c_desc
	WHERE c.category_code IS NULL and c.category_desc IS NULL

END TRY
BEGIN CATCH
	THROW;
END CATCH

DROP TABLE #temp_cat