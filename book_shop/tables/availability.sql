CREATE TABLE [dbo].[availability](
	availability_id INT IDENTITY(1,1) NOT NULL,
	availability_code INT NOT NULL, -- 0 is NOT available, 1 is available, 2 is pre-order 
	availability_desc NVARCHAR(20),
	CONSTRAINT pk_availability PRIMARY KEY (availability_id)
)