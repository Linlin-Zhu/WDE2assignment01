CREATE TABLE Customers (
    CustomerId int PRIMARY KEY,
    LastName varchar(100),
    FirstName varchar(100),
    Address varchar(255),
    City varchar(100)
);

INSERT INTO Customers 
    (CustomerId, LastName, FirstName, Address, City)
VALUES
    (1, 'Cardinal', 'Erichsen', 'Skagen 21', 'Stavanger'),
    (2, 'Greasy', 'Olsen', 'Gateveien 15', 'Sandnes'),
    (3, 'Tasty', 'Egan', 'Streetroad 19B', 'Liverpool');

SELECT CustomerId, CONCAT(FirstName, ' ', LastName) AS CustomerName, Address, City FROM Customers;

SELECT CustomerId, LastName, FirstName, Address, REPLACE(City, City, 'Montreal') AS City FROM Customers;

SELECT CustomerId, TRIM(LastName) AS LastName, FirstName, Address, City FROM Customers;