SELECT @@VERSION;
GO
CREATE DATABASE [Operations];
GO
USE [Operations]
GO
CREATE TABLE Product (
	ProductCode	 	UniqueIdentifier PRIMARY KEY,
	ProductName 	Varchar(200),
	Price			Decimal(12,5),
	TaxTypeCode		INT
)
GO
CREATE TABLE TaxType (
	TaxTypeCode	 	INT PRIMARY KEY,
	TaxTypeName 	Varchar(200),
	TaxPercentage	Decimal(12,5)
)
GO
CREATE TABLE Sale (
	SaleCode	UniqueIdentifier PRIMARY KEY,
	SaleDate	Datetime,
	Subtotal	Decimal(12,5),
	TaxAmount	Decimal(12,5),
	Total		Decimal(12,5)
)
GO
CREATE TABLE SaleDetail (
	SaleDetailCode	UniqueIdentifier PRIMARY KEY,
	SaleCode	 	UniqueIdentifier,
	ProductCode	 	UniqueIdentifier,
	Price 			Decimal(12,5),
	Quantity 		int,	
	Subtotal		Decimal(12,5),
	TaxAmount		Decimal(12,5),
	Total			Decimal(12,5)
)
GO
CREATE TABLE Purchase (
	PurchaseCode	UniqueIdentifier PRIMARY KEY,
	PurchaseDate	Datetime,
	Subtotal		Decimal(12,5),
	TaxAmount		Decimal(12,5),
	Total			Decimal(12,5)
)
GO
CREATE TABLE PurchaseDetail (
	PurchaseDetailCode	UniqueIdentifier PRIMARY KEY,
	ProductCode	 	UniqueIdentifier,
	PurchaseCode	 	UniqueIdentifier,	
	Price 			Decimal(12,5),
	Quantity 			int,
	Subtotal			Decimal(12,5),
	TaxAmount			Decimal(12,5),
	Total				Decimal(12,5)
)
GO
CREATE TABLE ProductStock (
	ProductStockCode	UniqueIdentifier PRIMARY KEY,
	ProductCode	 		UniqueIdentifier,
	Stock				Int
)
GO
CREATE TABLE Kardex (
	KardexCode		UniqueIdentifier PRIMARY KEY,
	KardexDate		Datetime,
	ProductCode	 	UniqueIdentifier,
	InitialStock	Int,
	Quantity		Int,
	FinalStock		Int,
	Symbol			Char(1)
)
GO
INSERT INTO TaxType VALUES (1,'IGV',18)
INSERT INTO TaxType VALUES (2,'Inafecto',0)	
GO
INSERT INTO Product VALUES (NewId(),'Aderezos',33,1)
INSERT INTO Product VALUES (NewId(),'Consome',13,1)
INSERT INTO Product VALUES (NewId(),'Crema de cacahuate',36,1)
INSERT INTO Product VALUES (NewId(),'Crema para café',28,1)
INSERT INTO Product VALUES (NewId(),'Pure de tomate',33,1)
INSERT INTO Product VALUES (NewId(),'Alimento para bebe',33,1)
INSERT INTO Product VALUES (NewId(),'Alimento para mascotas',33,1)
INSERT INTO Product VALUES (NewId(),'Atole',33,1)
INSERT INTO Product VALUES (NewId(),'Avena',33,1)
INSERT INTO Product VALUES (NewId(),'Azúcar',33,1)
INSERT INTO Product VALUES (NewId(),'Café',33,1)
INSERT INTO Product VALUES (NewId(),'Cereales',33,1)
INSERT INTO Product VALUES (NewId(),'Chile piquín',33,1)
INSERT INTO Product VALUES (NewId(),'Especias',33,1)
INSERT INTO Product VALUES (NewId(),'Flan en polvo',33,1)
INSERT INTO Product VALUES (NewId(),'Formulas infantiles',33,1)
INSERT INTO Product VALUES (NewId(),'Gelatinas en polvo/Grenetina',33,1)
INSERT INTO Product VALUES (NewId(),'Harina',33,1)
INSERT INTO Product VALUES (NewId(),'Harina preparada',33,0)
INSERT INTO Product VALUES (NewId(),'Mole',33,1)
INSERT INTO Product VALUES (NewId(),'Sal',33,1)
INSERT INTO Product VALUES (NewId(),'Salsas envasadas',33,1)
INSERT INTO Product VALUES (NewId(),'Sazonadores',33,1)
INSERT INTO Product VALUES (NewId(),'Sopas en sobre',33,1)
INSERT INTO Product VALUES (NewId(),'Cajeta',33,1)
INSERT INTO Product VALUES (NewId(),'Catsup',33,0)
INSERT INTO Product VALUES (NewId(),'Mayonesa',33,1)
INSERT INTO Product VALUES (NewId(),'Mermelada',33,1)
INSERT INTO Product VALUES (NewId(),'Miel',33,1)
INSERT INTO Product VALUES (NewId(),'Te',33,1)
INSERT INTO Product VALUES (NewId(),'Vinagre',33,1)
INSERT INTO Product VALUES (NewId(),'Huevo',33,1)
INSERT INTO Product VALUES (NewId(),'Pastas',33,1)
INSERT INTO Product VALUES (NewId(),'Aceitunas',33,0)
INSERT INTO Product VALUES (NewId(),'Champiñones enteros/rebanados',33,1)
INSERT INTO Product VALUES (NewId(),'Chícharo con zanahoria',33,1)
INSERT INTO Product VALUES (NewId(),'Chícharos enlatados',11,1)
INSERT INTO Product VALUES (NewId(),'Frijoles enlatados',25,1)
INSERT INTO Product VALUES (NewId(),'Frutas en almíbar',28,1)
INSERT INTO Product VALUES (NewId(),'Sardinas',22,0)
INSERT INTO Product VALUES (NewId(),'Atún en agua/aceite',18,1)
INSERT INTO Product VALUES (NewId(),'Chiles enlatados',19,1)
INSERT INTO Product VALUES (NewId(),'Chiles envasados',26,1)
INSERT INTO Product VALUES (NewId(),'Ensaladas enlatadas',33,1)
INSERT INTO Product VALUES (NewId(),'Granos de elote enlatados',33,1)
INSERT INTO Product VALUES (NewId(),'Sopa en lata',33,1)
INSERT INTO Product VALUES (NewId(),'Vegetales en conserva',33,1)