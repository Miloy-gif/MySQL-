USE users;
CREATE TABLE Human
(
    Id INT PRIMARY KEY auto_increment,
    FirstName VARCHAR(30),
    SurNames VARCHAR(30),
    Age INT,
    Email varchar(30),
    Phone varchar (30),
    Sex varchar(30)
);

INSERT Human (FirstName, SurNames, Age, Email, Phone, Sex)
VALUES
("Artur", "Milosh", 15, "milosh.a@gmail.com", "462-000-691", "male"),
("April", "Jonson", 14, "april@gmai.com", "124-354-357", "female"),
("Konstantin", "Trockoi", 62, "null", "262-211-091", "male"),
("Ania", "Klichenko", 45, "aniaa@gmai.com", "967-299-112", "female"),
("Sergei", "Minin", 43, "serg.nan@bk.ru", "202-736-842", "male"),
("Katia", "Klyk", 31, "kiti@gmai.com", "003-249-112", "female"),
("Yurii", "Pinchuk", 27, "pinchuk12@gmai.com", "123-456-342", "male"),
("Mila", "Tereshchuk", 27, "mila@gmail.com", "345-900-690", "female"),
("Petia", "Pinchuk", 23, "pinchuk.peat@gmail.com", "113-156-342", "male"),
("Vlad", "Naukov", 34, "vlad.nan@index.ua", "002-136-142", "male"),
("Vika", "Horishko", 20, "vika@gmai.com", "345-299-612", "female"),
("Alla", "Kawalidze", 61, "alla@gmai.com", "325-355-368", "female");


SELECT * FROM Human;
SELECT * FROM Human WHERE Sex ="male";
SELECT * FROM Human Where Sex = "female";
SELECT * FROM Human WHERE Age >= 18;
SELECT * FROM Human WHERE Age >=18 AND Age <=60;
SELECT * FROM Human WHERE Age >18 AND Age < 60 and Sex = "male";
SELECT * FROM Human WHERE Age <60 AND Sex ="female";
SELECT * FROM Human WHERE id BETWEEN 3 AND 13;
SELECT * FROM human WHERE email LIKE '%gmai%';
SELECT * FROM human WHERE email LIKE '%gmail%';
SELECT * FROM Human WHERE Phone LIKE "%2" AND Sex ="male" AND Email LIKE "%ua";







