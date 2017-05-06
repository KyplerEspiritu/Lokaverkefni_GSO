DROP DATABASE IF EXISTS 2910003120_lokaverkefni;
CREATE DATABASE 2910003120_lokaverkefni;
USE 2910003120_lokaverkefni;

CREATE TABLE Flytjandi
(
	Id integer(1) NOT NULL PRIMARY KEY,
	Nafn varchar(35),
	Faedingardagur integer(4),
	Lysing varchar(255),
	Danardagur char(8),
	FlokkurID integer(1) NOT NULL
);

CREATE TABLE Flokkur
(
	ID integer(1) NOT NULL PRIMARY KEY REFERENCES Flytjandi(FlokkurID),
	Nafn varchar(35)
); 


CREATE TABLE Lag
(
	Id integer(1) NOT NULL REFERENCES Flytjandi(Id),
	Nafn varchar(35),
	Lengd char(5),
	Hofundur_texti varchar(35)
); 

CREATE TABLE Diskur
(
	Id integer(1) NOT NULL PRIMARY KEY REFERENCES Flytjandi(Id),
	Nafn varchar(35),
	Utgafuar integer(4),
	Tegund_disk integer(1),
	Utgefandi_id integer(1)
); 

CREATE TABLE Utgefandi
(
	Id integer(1) NOT NULL PRIMARY KEY REFERENCES Diskur(Utgefandi_id),
	Nafn varchar(35)
); 

CREATE TABLE Tegund
(
	Id integer(1) NOT NULL PRIMARY KEY REFERENCES Diskur(Tegund_disk),
	Nafn varchar(35)
); 

INSERT INTO Utgefandi
VALUES
("1", "Artist Publishing Group"),
("2", "Arthouse Entertainment"),
("3", "Atlas Music");

INSERT INTO Tegund
VALUES
("1", "Pop"),
("2", "Rock"),
("3", "Soul"),
("4", "Electronic"),
("5", "Jazz");

INSERT INTO Lag
VALUES
("1", "100mph Sauce", "03:44", "Jason Bourne"),
("2", "Weakness Is On Its Way", "02:45", "Jason Statham"),
("3", "Sick Firecracker", "05:58", "Vin Diesel"),
("4", "Day Of The Bitch", "03:12", "Kit Harington"),
("5", "Hard Courage", "02:59", "Iwan Rheon"),
("4", "Procrastination", "03:00", "Matt Damon"),
("3", "Mystic Machine", "03:44", "Mark Zuckerberg"),
("1", "Passionate Gun", "04:23", "Mark Wahlberg"),
("5", "A Piece Of Pollution", "02:12", "John Legend"),
("2", "Some Kinda Assassin", "03:34", "Maroon 5"),
("4", "Liberty Is Sexy", "02:58", "Justin Timberlake"),
("1", "Insanity Of Fury", "03:02", "Alan Walker"),
("4", "She's Into Truth", "02:59", "Iwan Rheon"),
("3", "1 More Kiss", "04:23", "Matt Damon"),
("3", "Passionate Synchronisation", "03:50", "The Chainsmoker"),
("2", "Jet Fueled Cellphone", "04:01", "Future"),
("1", "Respect Your Spell", "03:56", "Coldplay"),
("5", "Classic Story", "02:54", "The Weekend"),
("4", "Lace Car", "05:21", "Zedd"),
("5", "I Spy Ruin", "03:19", "Bruno Mars");


INSERT INTO Flokkur
VALUES
("1", "Solo"),
("2", "Hljomsveit"),
("3", "Solo");

INSERT INTO Diskur
VALUES
("1", "Spirit", "2017", "1", "2"),
("2", "Lemonade", "2016", "5", "1"),
("3", "Blackstar", "2009", "3", "3"),
("4", "Changes", "2013", "4", "3"),
("5", "Ears", "2014", "2", "1"),
("6", "Nattesferd", "2012", "1", "1"),
("7", "Hero", "2011", "4", "2");

INSERT INTO Flytjandi
VALUES
("1", "Miley Cyrus", "1980", "Kvenkyn", "--/--/--", "1"),
("2", "Adele", "1970", "Kvenkyn", "--/--/--", "2"),
("3", "Katy Perry", "1975", "Kvenkyn", "--/--/--", "3"),
("4", "Britney Spears", "1985", "Kvenkyn", "--/--/--", "3"),
("5", "Ramin Djawadi", "1960", "Karlkyn", "--/--/--", "2");
