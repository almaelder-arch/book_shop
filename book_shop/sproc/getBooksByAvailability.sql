CREATE PROCEDURE [dbo].[getBooksByAvailability]
	@availability_code int
	
AS
BEGIN
	SELECT 
		b.[title],
		b.[ISBN],
		b.[Description],
		b.[release_date],
		a.[first_name],
		a.[last_name],
		av.[availability_desc]
	FROM dbo.books b WITH(NOLOCK)
	JOIN dbo.author a WITH(NOLOCK) ON a.author_id = b.author_id
	JOIN dbo.[availability] av WITH(NOLOCK) ON av.availability_id = b.availability_id
	where av.availability_code = @availability_code
END