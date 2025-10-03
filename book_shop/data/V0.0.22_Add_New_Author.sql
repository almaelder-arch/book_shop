use book_shop
go

DECLARE @f_name nvarchar(30) = 'Nick', 
		@l_name nvarchar(30) = 'Cutter'


EXEC create_author @f_name, @l_name