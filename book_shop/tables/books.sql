CREATE TABLE [dbo].[books](
	[book_id] BIGINT IDENTITY(1,1) NOT NULL,
	[title] NVARCHAR(300) NOT NULL,
	[ISBN] NVARCHAR(13) NOT NULL,
	[Description] NVARCHAR(MAX),
	[pricing] DECIMAL(10,2),
	[quantity] SMALLINT,
	[availability_id] INT NOT NULL,
	[category_id] INT NOT NULL,
	[author_id] INT,
	[release_date] DATE,
	CONSTRAINT pk_books PRIMARY KEY (book_id),
	CONSTRAINT fk_category_id FOREIGN KEY (category_id) REFERENCES category(category_id),
	CONSTRAINT fk_author_id FOREIGN KEY (author_id) REFERENCES author(author_id),
	CONSTRAINT fk_availability FOREIGN KEY (availability_id) REFERENCES [availability](availability_id)
)
GO
CREATE UNIQUE INDEX UQ_ISBN ON [dbo].[books] ([ISBN])
GO