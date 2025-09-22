CREATE TABLE [dbo].[author](
	author_id INT IDENTITY(1,1) NOT NULL,
	first_name NVARCHAR(30),
	last_name NVARCHAR(30),
	CONSTRAINT pk_author PRIMARY KEY (author_id)
)