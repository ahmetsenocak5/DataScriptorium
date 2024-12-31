USE mydb;


-- create TABLE Customers (
--     CustomerId INT NOT NULL AUTO_INCREMENT,
--     CustomerName VARCHAR(20),
--     ContactName VARCHAR(50),
--     customerAddress VARCHAR(100),
--     City VARCHAR(20),
--     PostalCode VARCHAR(20),
--     PRIMARY KEY (CustomerId)
-- );

CREATE TABLE BigDataCustomers (
    CustomerId INT NOT NULL AUTO_INCREMENT,
    CustomerName VARCHAR(100),
    ContactName VARCHAR(100),
    CustomerAddress VARCHAR(200),
    City VARCHAR(50),
    PostalCode VARCHAR(50),
    PRIMARY KEY (CustomerId)

);

ALTER TABLE BigDataCustomers ADD Country VARCHAR(100);



INSERT INTO BigDataCustomers (CustomerName, ContactName, CustomerAddress, City, PostalCode, Country)
VALUES 
('Alfreds Futterkiste', 'Maria Anders', 'Obere Str. 57', 'Berlin', '12209', 'Germany'),
('Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Avda. de la Constitución 2222', 'México D.F.', '05021', 'Mexico'),
('Antonio Moreno Taquería', 'Antonio Moreno', 'Mataderos 2312', 'México D.F.', '05023', 'Mexico'),
('Around the Horn', 'Thomas Hardy', '120 Hanover Sq.', 'London', 'WA1 1DP', 'UK'),
('Berglunds snabbköp', 'Christina Berglund', 'Berguvsvägen 8', 'Luleå', 'S-958 22', 'Sweden'),
('Blauer See Delikatessen', 'Hanna Moos', 'Forsterstr. 57', 'Mannheim', '68306', 'Germany'),
('Blondel père et fils', 'Frédérique Citeaux', '24, place Kléber', 'Strasbourg', '67000', 'France'),
('Bólido Comidas preparadas', 'Martín Sommer', 'C/ Araquil, 67', 'Madrid', '28023', 'Spain'),
('Bon app', 'Laurence Lebihans', '12, rue des Bouchers', 'Marseille', '13008', 'France'),
('Bottom-Dollar Marketse', 'Elizabeth Lincoln', '23 Tsawassen Blvd.', 'Tsawassen', 'T2F 8M4', 'Canada'),
('s Beverages', 'Victoria Ashworth', 'Fauntleroy Circus', 'London', 'EC2 5NT', 'UK'),
('Cactus Comidas para llevar', 'Patricio Simpson', 'Cerrito 333', 'Buenos Aires', '1010', 'Argentina'),
('Centro comercial Moctezuma', 'Francisco Chang', 'Sierras de Granada 9993', 'México D.F.', '05022', 'Mexico'),
('Chop-suey Chinese', 'Yang Wang', 'Hauptstr. 29', 'Bern', '3012', 'Switzerland'),
('Comércio Mineiro', 'Pedro Afonso', 'Av. dos Lusíadas, 23', 'São Paulo', '05432-043', 'Brazil'),
('Consolidated Holdings', 'Elizabeth Brown', 'Berkeley Gardens 12 Brewery', 'London', 'WX1 6LT', 'UK'),
('Drachenblut Delikatessend', 'Sven Ottlieb', 'Walserweg 21', 'Aachen', '52066', 'Germany'),
('Du monde entier', 'Janine Labrune', '67, rue des Cinquante Otages', 'Nantes', '44000', 'France'),
('Eastern Connection', 'Ann Devon', '35 King George', 'London', 'WX3 6FW', 'UK'),
('Ernst Handel', 'Roland Mendel', 'Kirchgasse 6', 'Graz', '8010', 'Austria'),
('Familia Arquibaldo', 'Aria Cruz', 'Rua Orós, 92', 'São Paulo', '05442-030', 'Brazil'),
('FISSA Fabrica Inter. Salchichas S.A.', 'Diego Roel', 'C/ Moralzarzal, 86', 'Madrid', '28034', 'Spain'),
('Folies gourmandes', 'Martine Rancé', '184, chaussée de Tournai', 'Lille', '59000', 'France'),
('Folk och fä HB', 'Maria Larsson', 'Åkergatan 24', 'Bräcke', 'S-844 67', 'Sweden'),
('Frankenversand', 'Peter Franken', 'Berliner Platz 43', 'München', '80805', 'Germany'),
('France restauration', 'Carine Schmitt', '54, rue Royale', 'Nantes', '44000', 'France'),
('Franchi S.p.A.', 'Paolo Accorti', 'Via Monte Bianco 34', 'Torino', '10100', 'Italy'),
('Furia Bacalhau e Frutos do Mar', 'Lino Rodriguez', 'Jardim das rosas n. 32', 'Lisboa', '1675', 'Portugal'),
('Galería del gastrónomo', 'Eduardo Saavedra', 'Rambla de Cataluña, 23', 'Barcelona', '08022', 'Spain'),
('Godos Cocina Típica', 'José Pedro Freyre', 'C/ Romero, 33', 'Sevilla', '41101', 'Spain');



SELECT * FROM bigdatacustomers;
SELECT * FROM bigdatacustomers WHERE City = 'berlin' AND Country = 'Germany';
SELECT * FROM bigdatacustomers WHERE City = 'Berlin' OR City = 'München';
SELECT * FROM bigdatacustomers WHERE NOt City = 'berlin';
SELECT * FROM bigdatacustomers WHERE Country = 'Germany' AND (City = 'Berlin' OR City = 'Mannheim');
SELECT * FROM bigdatacustomers WHERE NOT Country = 'Germany' AND NOT Country = 'UK';

SELECT * FROM bigdatacustomers ORDER BY Country;
SELECT * FROM bigdatacustomers ORDER BY Country DESC;

SELECT * FROM bigdatacustomers ORDER BY Country, CustomerName;
SELECT Country, CustomerName FROM bigdatacustomers ORDER BY Country ASC, CustomerName DESC;

SELECT * FROM bigdatacustomers WHERE City IS NULL;
SELECT CustomerName, CustomerAddress, City FROM bigdatacustomers WHERE CITY IS NOT NULL;

UPDATE bigdatacustomers SET CustomerName = 'Ahmet', ContactName = 'Happy New Year' WHERE CustomerId = 1;
UPDATE bigdatacustomers SET PostalCode = '00000' WHERE Country = 'UK';

SELECT PostalCode FROM bigdatacustomers WHERE Country = 'UK';

DROP TABLE customers;

INSERT INTO customers(CustomerName, ContactName, customerAddress, City, PostalCode)
VALUES  ('Alfreds Futterkiste', 'Maria Anders','Obere Str. 57', 'Berlin', '12209'),
        ('Ana Trujillo', 'Ana Trujillo','Avda. de la ', 'México D.F.', '05021'),
        ('Antonio Moren', 'Antonio Moreno','Mataderos 2312', 'México D.F.', '05023'),
        ('Around the Horn', 'Thomas Hardy','120 Hanover Sq.', 'London', 'WA1 1DP'),
        ('Berglunds snabbköp', 'Christina Berglund','Berguvsvägen 8', 'Warsaw',' S 958 22');


SELECT * FROM customers;

SELECT CustomerName, City FROM customers;

SELECT DISTINCT CustomerName FROM customers;

SELECT CustomerName FROM customers WHERE city = 'México D.F.';


SHOW TABLES;