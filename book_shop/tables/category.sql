CREATE TABLE [dbo].[category](
	category_id INT IDENTITY(1,1) NOT NULL,
	category_code NVARCHAR(6) NOT NULL,
	category_desc NVARCHAR(100) NOT NULL,
	CONSTRAINT pk_category PRIMARY KEY(category_id)
)
GO

CREATE UNIQUE INDEX UQ_Category_Code ON [dbo].[category](category_code);
GO