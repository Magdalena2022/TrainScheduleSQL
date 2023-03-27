USE train_schedule;

SET autocommit=0;
START TRANSACTION;

INSERT INTO City(Id, City_Name) VALUES(1, 'Katowice');
INSERT INTO City(Id, City_Name) VALUES(2, 'Kraków');
INSERT INTO City(Id, City_Name) VALUES(3, 'Gliwice');
INSERT INTO City(Id, City_Name) VALUES(4, 'Warszawa');
INSERT INTO City(Id, City_Name) VALUES(5, 'Praga');

INSERT INTO Depot(Id, Model, Maximum_Speed, Number_Wagons, Dining_Wagon, Number_Seats) VALUES(1, 'SM42-607', 130, '12', True, '2');
INSERT INTO Depot(Id, Model, Maximum_Speed, Number_Wagons, Dining_Wagon, Number_Seats) VALUES(2, 'SM31-027', 140, '6', True, '1');
INSERT INTO Depot(Id, Model, Maximum_Speed, Number_Wagons, Dining_Wagon, Number_Seats) VALUES(3, 'SM42-2633', 145, '7', False, '1');
INSERT INTO Depot(Id, Model, Maximum_Speed, Number_Wagons, Dining_Wagon, Number_Seats) VALUES(4, 'SM42-2633', 145, '3', False, '2');
INSERT INTO Depot(Id, Model, Maximum_Speed, Number_Wagons, Dining_Wagon, Number_Seats) VALUES(5, 'SM31-027', 140, '7', True, '3');
INSERT INTO Depot(Id, Model, Maximum_Speed, Number_Wagons, Dining_Wagon, Number_Seats) VALUES(6, 'SM42-607', 130, '4', True, '6');
INSERT INTO Depot(Id, Model, Maximum_Speed, Number_Wagons, Dining_Wagon, Number_Seats) VALUES(7, 'SM42-678', 135, '6', True, '6');
INSERT INTO Depot(Id, Model, Maximum_Speed, Number_Wagons, Dining_Wagon, Number_Seats) VALUES(8, 'SM42-678', 135, '4', True, '4');
INSERT INTO Depot(Id, Model, Maximum_Speed, Number_Wagons, Dining_Wagon, Number_Seats) VALUES(9, 'SP42-111', 145, '2', False, '2');
INSERT INTO Depot(Id, Model, Maximum_Speed, Number_Wagons, Dining_Wagon, Number_Seats) VALUES(10, 'SP42-111', 145, '1', False, '1');
INSERT INTO Depot(Id, Model, Maximum_Speed, Number_Wagons, Dining_Wagon, Number_Seats) VALUES(11, 'SM42-692', 145, '4', True, '4');
INSERT INTO Depot(Id, Model, Maximum_Speed, Number_Wagons, Dining_Wagon, Number_Seats) VALUES(12, 'SM42-692', 145, '2', True, '2');
INSERT INTO Depot(Id, Model, Maximum_Speed, Number_Wagons, Dining_Wagon, Number_Seats) VALUES(13, 'SM42-563', 155, '1', True, '1');
INSERT INTO Depot(Id, Model, Maximum_Speed, Number_Wagons, Dining_Wagon, Number_Seats) VALUES(14, 'SM42-563', 155, '3', True, '3');
INSERT INTO Depot(Id, Model, Maximum_Speed, Number_Wagons, Dining_Wagon, Number_Seats) VALUES(15, 'SM31-011', 155, '2', True, '2');
INSERT INTO Depot(Id, Model, Maximum_Speed, Number_Wagons, Dining_Wagon, Number_Seats) VALUES(16, 'SM31-011', 155, '4', True, '4');
INSERT INTO Depot(Id, Model, Maximum_Speed, Number_Wagons, Dining_Wagon, Number_Seats) VALUES(17, 'SM42-607', 145, '1', True, '2');
INSERT INTO Depot(Id, Model, Maximum_Speed, Number_Wagons, Dining_Wagon, Number_Seats) VALUES(18, 'SM42-607', 145, '2', True, '3');
INSERT INTO Depot(Id, Model, Maximum_Speed, Number_Wagons, Dining_Wagon, Number_Seats) VALUES(19, 'SM31-027', 160, '3', True, '4');
INSERT INTO Depot(Id, Model, Maximum_Speed, Number_Wagons, Dining_Wagon, Number_Seats) VALUES(20, 'SM31-027', 160, '4', True, '5');


INSERT INTO Carrier(Id, Carrier_Name, Shortcut_Name) VALUES(1, 'PKP Intercity', 'PKP');
INSERT INTO Carrier(Id, Carrier_Name, Shortcut_Name) VALUES(2, 'Koleje Małopolskie', 'KMŁ');
INSERT INTO Carrier(Id, Carrier_Name, Shortcut_Name) VALUES(3, 'Koleje Mazowieckie', 'KMZ');
INSERT INTO Carrier(Id, Carrier_Name, Shortcut_Name) VALUES(4, 'Koleje Śląskie', 'KŚ');
INSERT INTO Carrier(Id, Carrier_Name, Shortcut_Name) VALUES(5, 'Koleje Wielkopolskie', 'KW');
INSERT INTO Carrier(Id, Carrier_Name, Shortcut_Name) VALUES(6, 'POLREGIO', 'POL');
INSERT INTO Carrier(Id, Carrier_Name, Shortcut_Name) VALUES(7, 'PENDOLINO', 'PEND');
INSERT INTO Carrier(Id, Carrier_Name, Shortcut_Name) VALUES(8, 'České dráhy', 'ČD');


INSERT INTO Relation(Id, Depot_Id, Carrier_Id, Relation_Name, Relation_Number) VALUES(1, 20, 8, 'Warszawa-Praga', 'IC116');
INSERT INTO Relation(Id, Depot_Id, Carrier_Id, Relation_Name, Relation_Number) VALUES(2, 19, 1, 'Katowice-Warszawa', 'TKL61190');
INSERT INTO Relation(Id, Depot_Id, Carrier_Id, Relation_Name, Relation_Number) VALUES(3, 18, 4, 'Katowice-Kraków', 'IC83172');
INSERT INTO Relation(Id, Depot_Id, Carrier_Id, Relation_Name, Relation_Number) VALUES(4, 17, 6, 'Kraków-Katowice', 'R34310');
INSERT INTO Relation(Id, Depot_Id, Carrier_Id, Relation_Name, Relation_Number) VALUES(5, 16, 1, 'Kraków-Warszawa', 'IC3522');
INSERT INTO Relation(Id, Depot_Id, Carrier_Id, Relation_Name, Relation_Number) VALUES(6, 15, 1, 'Warszawa-Kraków', 'IC3521');
INSERT INTO Relation(Id, Depot_Id, Carrier_Id, Relation_Name, Relation_Number) VALUES(7, 14, 1, 'Warszawa-Katowice', 'TKL61191');
INSERT INTO Relation(Id, Depot_Id, Carrier_Id, Relation_Name, Relation_Number) VALUES(8, 13, 8, 'Praga-Warszawa', 'IC117');
INSERT INTO Relation(Id, Depot_Id, Carrier_Id, Relation_Name, Relation_Number) VALUES(9, 12, 4, 'Katowice-Gliwice', 'KS40661');
INSERT INTO Relation(Id, Depot_Id, Carrier_Id, Relation_Name, Relation_Number) VALUES(10, 11, 4, 'Gliwice-Katowice', 'KS40662');


INSERT INTO CityRelation(City_Id, Relation_Id, Arrival_Time, Departure_Time, Platform, Line) VALUES(4, 1, '14:30', '14:40', '3', '1');
INSERT INTO CityRelation(City_Id, Relation_Id, Arrival_Time, Departure_Time, Platform, Line) VALUES(1, 1, '17:10', '17:15', '2', '2');
INSERT INTO CityRelation(City_Id, Relation_Id, Arrival_Time, Departure_Time, Platform, Line) VALUES(5, 1, '20:10', '20:15', '1', '1');

INSERT INTO CityRelation(City_Id, Relation_Id, Arrival_Time, Departure_Time, Platform, Line) VALUES(5, 8, '08:30', '08:40', '1', '1');
INSERT INTO CityRelation(City_Id, Relation_Id, Arrival_Time, Departure_Time, Platform, Line) VALUES(1, 8, '11:10', '11:15', '2', '2');
INSERT INTO CityRelation(City_Id, Relation_Id, Arrival_Time, Departure_Time, Platform, Line) VALUES(4, 8, '14:10', '14:15', '3', '1');

INSERT INTO CityRelation(City_Id, Relation_Id, Arrival_Time, Departure_Time, Platform, Line) VALUES(2, 4, '08:00', '08:10', '4', '2');
INSERT INTO CityRelation(City_Id, Relation_Id, Arrival_Time, Departure_Time, Platform, Line) VALUES(1, 4, '09:50', '10:00', '4', '2');

INSERT INTO CityRelation(City_Id, Relation_Id, Arrival_Time, Departure_Time, Platform, Line) VALUES(1, 3, '10:00', '10:10', '4', '2');
INSERT INTO CityRelation(City_Id, Relation_Id, Arrival_Time, Departure_Time, Platform, Line) VALUES(2, 3, '11:50', '12:00', '4', '2');

INSERT INTO CityRelation(City_Id, Relation_Id, Arrival_Time, Departure_Time, Platform, Line) VALUES(1, 9, '11:00', '11:15', '1', '3');
INSERT INTO CityRelation(City_Id, Relation_Id, Arrival_Time, Departure_Time, Platform, Line) VALUES(3, 9, '12:00', '12:15', '1', '3');

INSERT INTO CityRelation(City_Id, Relation_Id, Arrival_Time, Departure_Time, Platform, Line) VALUES(3, 10, '12:15', '12:30', '1', '3');
INSERT INTO CityRelation(City_Id, Relation_Id, Arrival_Time, Departure_Time, Platform, Line) VALUES(1, 10, '13:15', '13:30', '1', '3');

INSERT INTO CityRelation(City_Id, Relation_Id, Arrival_Time, Departure_Time, Platform, Line) VALUES(2, 5, '07:00', '07:15', '3', '2');
INSERT INTO CityRelation(City_Id, Relation_Id, Arrival_Time, Departure_Time, Platform, Line) VALUES(4, 5, '09:45', '10:10', '2', '3');

INSERT INTO CityRelation(City_Id, Relation_Id, Arrival_Time, Departure_Time, Platform, Line) VALUES(4, 6, '10:10', '10:20', '2', '3');
INSERT INTO CityRelation(City_Id, Relation_Id, Arrival_Time, Departure_Time, Platform, Line) VALUES(2, 6, '12:45', '13:00', '3', '2');

INSERT INTO CityRelation(City_Id, Relation_Id, Arrival_Time, Departure_Time, Platform, Line) VALUES(1, 2, '6:50', '07:00', '1', '1');
INSERT INTO CityRelation(City_Id, Relation_Id, Arrival_Time, Departure_Time, Platform, Line) VALUES(4, 2, '10:00', '10:15', '1', '1');

INSERT INTO CityRelation(City_Id, Relation_Id, Arrival_Time, Departure_Time, Platform, Line) VALUES(4, 7, '10:15', '10:30', '2', '2');
INSERT INTO CityRelation(City_Id, Relation_Id, Arrival_Time, Departure_Time, Platform, Line) VALUES(1, 7, '13:30', '13:45', '2', '2');

COMMIT;