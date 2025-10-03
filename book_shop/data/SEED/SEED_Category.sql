USE book_shop
GO

/**** 

SCRIPT FOR SEEDING dbo.category table

****/

INSERT INTO [dbo].category(category_code,category_desc)
VALUES('SCIFI','Science Fiction'),
('FIC','Fiction'),
('MYS','Mystery'),
('HOR','Horror'),
('CLAS','Classics'),
('HISFIC','Historical Fiction'),
('FAN','Fantasy'),
('HIS','History'),
('CHI','Childrens'),
('ROM','Romance'),
('LGBT','LGBT'),
('AUTB','AutoBiography'),
('HUM','Humor'),
('YA','Young Adult')

