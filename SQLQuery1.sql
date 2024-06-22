CREATE DATABASE MyApp1

USE MyApp1

CREATE TABLE Users2 (
	Id INT IDENTITY(1, 1) PRIMARY KEY,
	Name NVARCHAR(50) NOT NULL,
	Surname NVARCHAR(50) NOT NULL,
	Email NVARCHAR(50) UNIQUE,
	RegistrationDate DATETIME DEFAULT GETDATE() CHECK(RegistrationDate > GETDATE()) ,
	ContactNumber NVARCHAR(20) DEFAULT '+994000000000',
	Age INT CHECK(Age > 18),
	Address NVARCHAR(50)
)

INSERT INTO Users2([Name], Surname, Email, RegistrationDate, ContactNumber, Age, [Address])
VALUES 
		('Name1', 'Surname1', 'Email14215', '2024-06-27', '5905904904', 16, 'gneqiongieog')
		--('Naasme29', 'Surname2', 'Email2', '2024-07-27', '5905644904', 19, 'gneqiongieog'),
		--('Nasagme3', 'Surname3', 'Email3', '2024-08-27', '5473444904', 19, 'gneqiongieog'),
		--('Namahe4', 'Surname4', 'Email4', '2024-09-27', '5905974374', 19, 'gneqiongieog'),
		--('Nahsme5', 'Surname5', 'Email5', '2024-10-27', '5437433464', 19, 'gneqiongieog')


CREATE TABLE Categories (
	Id INT IDENTITY(1, 1) PRIMARY KEY,
	Name NVARCHAR(50) NOT NULL,
	Slug NVARCHAR(50) UNIQUE,
	CreatedAt DATETIME DEFAULT GETDATE() CHECK(CreatedAt > GETDATE()),
	IsActive BIT 
)

INSERT INTO Categories(Name, Slug, CreatedAt, IsActive)
VALUES
		('Name1', 'Slug1', '2024-07-29', 'true'),
		('Name2', 'Slug2', '2024-08-29', 'false'),
		('Name3', 'Slug3', '2024-09-29', 'false'),
		('Name4', 'Slug4', '2024-07-29', 'true')

SELECT Name,Surname,Email FROM Users2
SELECT Name, IsActive FROM Categories
