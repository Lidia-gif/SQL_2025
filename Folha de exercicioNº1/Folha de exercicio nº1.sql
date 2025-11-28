CREATE DATABASE Northwind;
 USE Northwind;

-- 1 Pergunta
CREATE TABLE Customers(
CustomerID  INT PRIMARY KEY,
CompanyName VARCHAR(20)
);

SELECT * FROM customers;

 -- Inserir dados--
 INSERT INTO Customers
 VALUES (1,'LIDIACompany'),
		(2,'PRITISHA_COMPANY'),
        (3,'EDP'),
        (4,'Bolacha-Vem');
 
SELECT * FROM Customers ORDER BY Companyname ASC;

-- 2 Pergunta
ALTER TABLE Customers
ADD ( ContactName VARCHAR(20),
	  Region VARCHAR(20),
      Country VARCHAR(20)
   
);


-- LIDIACompany
UPDATE Customers
SET ContactName = '9920765',
	Region = 'Angola',
    Country = 'Luanda'
WHERE CustomerID =1;  

-- PRITISHA_COMPANY
  UPDATE Customers
SET ContactName = '988865',
	Region = 'Caribe',
    Country = 'Mexico'
WHERE CustomerID =2;  

-- EDP
UPDATE Customers
SET ContactName = '9977765',
	Region = 'Changai',
    Country = 'Korea'
WHERE CustomerID =3;  

-- Bolacha-Vem
UPDATE Customers
SET ContactName = '9654651',
	Region = 'Cidade Perdida',
    Country = 'Portugal'
WHERE CustomerID =4;  

SELECT Companyname , ContactName, Region
FROM customers
ORDER BY Region;
 
 -- Pergunta 3
 CREATE TABLE Products(
 ProductID  INT PRIMARY KEY,
 ProductName VARCHAR(30),
 CategoryID INT ,
 Unitsinstock  INT,
SupplierID INT
); 

SELECT * FROM Products;

INSERT INTO Products (ProductID, ProductName, SupplierID, Unitsinstock, CategoryID)
VALUES (1,"Peixe", 65, 150, 1),
       (2,"Rato", 87, 100, 2),
       (3,"Chá", 22, 250, 3),
       (4,"Boneca", 98, 200, 2);
       
SELECT ProductName , Unitsinstock
FROM Products
WHERE CategoryID = 1 AND Unitsinstock > 0 
ORDER BY Unitsinstock DESC;
 
SELECT * FROM Products 
ORDER BY CategoryID DESC;

-- Pergunta 4
CREATE TABLE Encomendas (  
OrderID INT PRIMARY KEY,
Quantity INT,
ProductID INT,
FOREIGN KEY (ProductID) REFERENCES products(ProductID)
); 

SELECT ProductID, Quantity 
FROM Encomendas
WHERE OrderID IN (10812 ,10296, 10251,10641);

SELECT * FROM Encomendas;

INSERT INTO Encomendas (OrderID , Quantity, ProductID)
VALUES(10812 , 13,1),
	  (10296, 20,2),
      (10251, 19,3);
