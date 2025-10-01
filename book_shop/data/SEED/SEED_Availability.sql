USE book_shop
GO

/****
SCRIPT TO SEED THE AVAILABILITY TABLE
****/

INSERT INTO dbo.[availability](availability_code,availability_desc)
VALUES(0,'Out Of Stock'),
(1,'Available'),
(2,'Pre-Order')