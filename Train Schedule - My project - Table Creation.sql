CREATE DATABASE IF NOT EXISTS train_schedule;

USE train_schedule;

CREATE TABLE City (
Id integer NOT NULL PRIMARY KEY,
City_Name varchar (30) NOT NULL
);

CREATE TABLE Depot(
Id integer NOT NULL PRIMARY KEY,
Model varchar (50),
Maximum_Speed integer NOT NULL,
Number_Wagons integer NOT NULL,
Dining_Wagon boolean DEFAULT FALSE,
Number_Seats integer NOT NULL
);

CREATE TABLE Carrier(
Id integer NOT NULL PRIMARY KEY,
Carrier_Name varchar (30) NOT NULL,
Shortcut_Name varchar (5)
);

CREATE TABLE Relation (
Id integer NOT NULL PRIMARY KEY,
Depot_Id integer NOT NULL,
Carrier_Id integer NOT NULL,
Relation_Name varchar (50) NOT NULL,
Relation_Number varchar (15),

FOREIGN KEY (Depot_Id) REFERENCES Depot(Id),
FOREIGN KEY (Carrier_Id) REFERENCES Carrier(Id)
);

CREATE TABLE CityRelation (
City_Id integer NOT NULL,
Relation_Id integer NOT NULL,
Arrival_Time varchar (10) NOT NULL,
Departure_Time varchar (10) NOT NULL,
Platform varchar (10),
Line varchar (10),

FOREIGN KEY (City_Id) REFERENCES City(Id),
FOREIGN KEY (Relation_Id) REFERENCES Relation(Id),
PRIMARY KEY(City_Id, Relation_Id)
);




