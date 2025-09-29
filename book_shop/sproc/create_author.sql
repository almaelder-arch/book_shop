CREATE PROCEDURE [dbo].[create_author]
	@first_name NVARCHAR(30) ,
	@last_name NVARCHAR(30)
AS
BEGIN

	DECLARE @id INT
	
	INSERT INTO dbo.author(first_name,last_name)
	VALUES(@first_name,@last_name)

	SET @id = SCOPE_IDENTITY()

	SELECT @id

END
GO

