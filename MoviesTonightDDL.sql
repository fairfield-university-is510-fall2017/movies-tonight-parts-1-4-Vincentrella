CREATE DATABASE MoviesTonight;

USE MoviesTonight;

#Creating Table "Theater"
CREATE TABLE THEATER (
	TheaterID int(11) NOT NULL auto_increment,
	TNAME varchar(50) default NULL,
    Location varchar(50) default NULL,
    Phone int(11) default NULL,
    PRIMARY KEY (TheaterID)
);

#Creating Table "Show"
CREATE TABLE SHOWS (
	ShowID int(11) NOT NULL auto_increment,
    MovieID int(11) default NULL,
    TheaterID int(11) default NULL,
    Showtime time default NULL,
    PRIMARY KEY (ShowID)
);

#Creating Table "Movie"

CREATE TABLE MOVIE (
	MovieID int(11) NOT NULL auto_increment,
	Title varchar(50) default NULL,
    Rating varchar(11) default NULL,
    PRIMARY KEY (MovieID)
    );

#CREATING Table "Credit"

CREATE TABLE CREDIT (
	CreditID int(11) NOT NULL auto_increment,
    CCode int (11),
    ArtistID int(11),
    MovieID int(11),
    PRIMARY KEY (CreditID)
);

#Creating table artist
CREATE TABLE ARTIST (
	ArtistID int (11) NOT NULL auto_increment,
    AName varchar(50) default NULL,
    PRIMARY KEY (ArtistID) 
);

#Creating foreign key for CREDIT
ALTER TABLE CREDIT
	ADD FOREIGN KEY (ArtistID)
    REFERENCES ARTIST (ArtistID);
    
#Creating foreign key for CREDIT
ALTER TABLE CREDIT
	ADD FOREIGN KEY (MovieID)
    REFERENCES Movie (MovieID);

##Creating foreign key for SHOWS
ALTER TABLE SHOWS
	ADD FOREIGN KEY (TheaterID)
    REFERENCES THEATER (TheaterID);

#Creating foreign key for SHOWS
ALTER TABLE SHOWS
	ADD FOREIGN KEY (MovieID)
    REFERENCES MOVIE (MovieID);
