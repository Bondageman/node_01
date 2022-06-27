CREATE DATABASE new_database;
USE new_database;

CREATE TABLE books(
    title VARCHAR (60) NOT NULL,
    price INT NOT NULL,
    author VARCHAR(50) NOT NULL,
    year INT NOT NULL
);

CREATE TABLE actors(
    firstname VARCHAR (25) NOT NULL,
    lastname VARCHAR (25)NOT NULL,
    age INT NOT NULL,
    nationality VARCHAR (25)NOT NULL
);

CREATE TABLE movies(
    title VARCHAR(60) NOT NULL,
    genre VARCHAR(30) NOT NULL,
    director VARCHAR(60) NOT NULL,
    release_year INT NOT NULL,PRIMARY KEY(title));


INSERT INTO books 
VALUES ("Tom Jones", 350.00, "Henry Fielding", 1749), 
    ("Underworld", 400.00, "JM Coetzee", 1999), 
    ("Amongst Women", 300.00, "John McGahern", 1990),
    ("The Adventures of Tom Sawyer", 150.00, "Mark Twain", 1876),
    ("Stories of Motherhood", 330.00, "Alice Munro", 2012);

INSERT INTO actors
VALUES ("Tom", "Cruise", 60, "American"),
    ("Dwayne", "Jhonson", 50, "American"),
    ("Chris", "Hemsworth", 53, "Australian"),
    ("Will", "Smith", 60, "American"),
    ("Henry", "Cavill", 39, "British");

INSERT INTO movies 
VALUES ("Joker", "psychological thriller", "Todd Phillips", 2019),
("Avengers: Infinity War", "superheroes", "Anthony Russo, Joe Russo", 2018),
("Furious 7", "action", "James Wan", 2015),
("The Lion King", "musical drama", "Jon Favreau", 2019),
("Jurassic World", "action", "Colin Trevorrow", 2015);



--START HomeWork Alex Melnyk

-- CREATE TABLE

CREATE TABLE user_info (
	name_user VARCHAR(100) NOT NULL,
	age_user INT(11) NOT NULL,
	country_user TEXT NOT NULL  
);

CREATE TABLE problems_info (
	names_problems VARCHAR(100) NOT NULL,
	deskription_problems TEXT NOT NULL
);

CREATE TABLE programming_date (
	name_language VARCHAR(100) NULL DEFAULT '',
	years_experience SMALLINT(11) NULL DEFAULT NULL,
	year_start TINYINT(11) NULL DEFAULT NULL
);


-- INSERT

INSERT INTO user_info (name_user, age_user, country_user) 
VALUES ("Alex", 25, "Ukraine"),
("Ivan", 21, "Ukraine"),
("Inna", 31, "Ukraine"),
("Vlad", 27, "Ukraine"),
("Illia", 23, "Ukraine");

INSERT INTO programming_date (name_language, years_experience, year_start) 
VALUES ("JavaScript", 2, 20),
("Python", 1, 22),
("C#",5, 17),
("Rust", 1, 21),
("C++", 12, 10);

INSERT INTO problems_info (names_problems, deskription_problems) 
VALUES ("screen breakage", "the screen is cracked and does not work"),
("touchpad", "not work"),
("screen breakage", "the screen is cracked and does not work"),
("touchpad", "not work"),
("screen breakage", "the screen is cracked and does not work");

-- End HomeWork Alex Melnyk

-- Start homework Polina Nizhynska
CREATE TABLE streets (
    coutry varchar(30),
    city varchar(30),
    street_name varchar(30)
);
CREATE TABLE taxes (
    your_name varchar(30),
    surname varchar(30),
    resedents varchar(30),
    ocupation varchar(30),
	income int
);
CREATE TABLE book_tikets (
    your_name varchar(30),
    surname varchar(30),
    departure varchar(30),
    destination varchar(30)
);

insert into book_tikets values 
("Volodymyr", "Ivanov", "Lviv", "Ternopil"),
("Vitaliy", "Selyshyn", "Gdansk", "Poznan"),
("Olexandr", "Semenyk", "Berlin", "Katovice"), 
("Sergiy", "Melnyk", "Chernivtsi", "Lviv"),
("Anatoliy", "Mosiychyk", "Ivano-Frankivsk", "Peremyshl");

insert into streets values 
("Ukraine", "Lviv", "Kopernyka"),
("Ukraine", "Uzgorod", "Shevchenka"),
("Poland", "Warsaw", "Żelazna"), 
("Germany", "Berlin", "Schröderstraße"),
("France", "Paris", "Rue de Rivoli"); 

insert into taxes values 
("Ivan", "Zadoroznyy", "Accounter", "Ukraine", 50000),
("Max", "Stepanovych", "Developer", "Ukraine", 40000),
("Volodymyr", "Kuziz", "Analyst","Ukraine", 100000), 
("Anton", "Marchyk", "Backer", "Ukraine", 30000),
("Mark", "Nechuy", "Manager","Ukraine", 40000);

-- End homework Polina Nizhynska

-- -----------------------------------------------------
-- Start homework Zaritsky Volodymyr
-- -----------------------------------------------------
CREATE TABLE viewers (
  `idvw` INT NOT NULL AUTO_INCREMENT,
  `vw_name` VARCHAR(45) NOT NULL,
  `vw_age` INT NOT NULL,
  PRIMARY KEY (`idvw`))


CREATE TABLE films (
  `idfm` INT NOT NULL AUTO_INCREMENT,
  `fm_name` VARCHAR(45) NOT NULL,
  `fm_rating` INT NOT NULL,
  PRIMARY KEY (`idfm`))


CREATE TABLE directors (
  `iddir` INT NOT NULL AUTO_INCREMENT,
  `dir_name` VARCHAR(45) NOT NULL,
  `id_suname` VARCHAR(45) NOT NULL,
  `dir_city` VARCHAR(45) NOT NULL,
  `dir_age` INT NOT NULL,
  PRIMARY KEY (`iddir`))


INSERT INTO films 
VALUES (1, "Tenet", 8),
(2, "Schindler's List", 9),
(3, "Pulp Fiction", 9),
(4, "Avatar", 8),
(5, "Star Wars: Episode IV - A New Hope", 9);


INSERT INTO viewers 
VALUES (1, "Ivan228", 13),
(2, "OlehMaxno", 23),
(3, "Bondageman", 19),
(4, "Alezx", 18),
(5, "pan_mykhailo", 59);


INSERT INTO  directors
VALUES (1, "Christopher", "Nolan", "London", 51),
(2, "Quentin", "Tarantino", "Knoxville", 59),
(3, "George", "Lucas", "Modesto", 78),
(4, "Steven", "Spielberg", "Cincinnati", 75),
(5, "James", "Cameron", "Kapuskasing", 67);

-- -----------------------------------------------------
-- End homework Zaritsky Volodymyr
-- -----------------------------------------------------
-- Start homework Yana Honchar

CREATE TABLE tennis (
name_surname VARCHAR(30),
gender VARCHAR (30),
age INT NOT NULL,
player_level VARCHAR (30)
);

CREATE TABLE relocation(
position VARCHAR (55),
team VARCHAR (55),
name_surname VARCHAR (55),
country_city VARCHAR (55)
);

CREATE TABLE ice_cream(
price INT NOT NULL,
taste VARCHAR (55),
adding VARCHAR (55),
seller VARCHAR (55)
);

INSERT INTO tennis
VALUES ("Ivanov Nikolay", "male", 27, 1),
("Luhova Ksenia", "female", 21, 3),
("Kalim Jane", "male", 22, 3),
("Zimina Anna", "female", 33, 2),
("Klimov Petro", "male", 31, 1);

INSERT INTO relocation
VALUES ("PHP developer", "server team", "Glushko Taras", "France, Paris"),
("QA Engineer", "QA team", "Novikov Ivan", "Germany, Munich"),
("QA Automation Engineer", "QA team", "Penik Terry", "Boston, USA"),
("JS Developer", "server team", "Bratislavskaya Svitlana", "Poland, Poznan"),
("Android Developer", "mobile team", "Khizma Anton", "Spain, Madrid");

INSERT INTO ice_cream
VALUES (145, "chocolate", "coconat", "Andrew"),
(155, "vanilla", "condenset milk", "Valentina"),
(155, "whiskey", "bamnana", "Valentina"),
(135, "coffee", "cinnamon", "Jack"),
(145, "vanilla", "chocolate", "Andrew");

-- End homework Yana Honchar

 
