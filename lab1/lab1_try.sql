CREATE DATABASE lab_1;

CREATE TABLE FILM
                            (
                            FID int,
                            FNAME CHAR(30),
                            FTYPE CHAR(10),
                            DNAME CHAR(30),
                            length int,
                            IS3D CHAR(1),
                            GRADE int CHECK (GRADE >= 0 AND GRADE <= 100),
                            PRIMARY KEY (FID)
                            )

CREATE TABLE ACTOR(
                            ACTID int,
                            ANAME CHAR(30),
                            SEX CHAR(2),
                            BYEAR INT,
                            PRIMARY KEY (ACTID)
                            );

CREATE TABLE ACTIN(
                            ACTID INT,
                            FID INT,
                            ISLEADING CHAR(1) CHECK (ISLEADING IN ('Y', 'N')),
                            GRADE INT CHECK (GRADE>=0 AND GRADE <= 100),
                            PRIMARY KEY(ACTID, FID),
                            FOREIGN KEY(ACTID) REFERENCES ACTOR(ACTID),
                            FOREIGN KEY(FID) REFERENCES FILM(FID)
                            );


CREATE TABLE THEATER(
                            TID INT,
                            TNAME CHAR(20),
                            TAREA CHAR(20),
                            ADDRESS CHAR(30),
                            PRIMARY KEY(TID)
                            );


CREATE TABLE SHOWING(
                            FID INT,
                            TID INT,
                            PRICE INT,
                            YEARS INT,
                            MONTHS INT,
                            PRIMARY KEY( FID, TID),
                            FOREIGN KEY(FID) REFERENCES FILM(FID),
                            FOREIGN KEY(TID) REFERENCES THEATER(TID)
                            );

