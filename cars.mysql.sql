
USE users;
CREATE TABLE Cars
(
    Id INT PRIMARY KEY auto_increment,
    Make_Car VARCHAR(30),
    Model_Car varchar (30),
    Year_Car INT,
    Horse_power VARCHAR(30),
    Volume varchar(30),
    Driver varchar(30)
);

INSERT Cars (Make_Car, Model_Car, Year_Car, Horse_power, Volume, Driver)
VALUES
('Audi', 'Audi TSi', 2008, 180, 1.8, 'Sergei'),
('Opel', 'Adam Opel AG', 2012, 160, 1.6, 'Yura'),
('BMW', '530m', 2002, 180, 2, 'Petia'),
('Mercedes', 'e200', 1990, 120, 1.7, 'Merry'),
('Subaru', 'wrx', 2010, 220, 2.2, 'Vlad'),
('Audi', 'Audi TT', 2020, 250, 2.1, 'Mila'),
('BMW', 'e34', 2016, 220, 2.2, 'Joanna'),
('Opel', 'Opel Astra', 2016, 130, 1.3, 'Valentin'),
('BMW', 'shell', 1998, 160, 2.1, 'Bella'),
('Nissan', 'X-Trail', 2019, 171, 4.6, 'Joy'),
('Citroen', 'C3', 2015, 110, 1.2, 'Katia'),
('Audi', 'A6', 1994, 120, 2.5, 'Barbara'),
('BMW', 'X5', 2013, 211, 2.3, 'Artur');

SELECT* FROM Cars;
SELECT * FROM Cars ORDER BY Driver DESC;
SELECT * FROM Cars ORDER BY Driver ASC;
SELECT * FROM Cars WHERE NOT Make_Car = 'BMW';
SELECT * FROM Cars ORDER BY Make_Car ASC;
SELECT * FROM Cars WHERE Year_Car > 2010;
SELECT * FROM Cars WHERE Year_Car >2010 AND Year_Car<2020;
SELECT * FROM Cars WHERE Volume < 2;
SELECT * FROM Cars WHERE Volume <3;
SELECT * FROM Cars WHERE Horse_power >100 AND Horse_power < 200;
SELECT * FROM Cars WHERE Horse_power >100 AND Volume <2;
SELECT * FROM Cars WHERE Horse_power >100 AND Volume >2;
SELECT * FROM Cars WHERE Make_Car ='BMW' AND Horse_power >100 AND Volume >2;


























