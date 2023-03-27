USE train_schedule;

# 1. Display the names of cities and the time of arrival and departure in these cities for a specific relationship. 
SELECT City_Name, Relation_Name, Arrival_Time, Departure_Time FROM Relation
INNER JOIN CityRelation
ON CityRelation.Relation_Id=Relation.Id
INNER JOIN City
ON City.Id=CityRelation.City_Id
WHERE Relation.Id=1
ORDER BY Arrival_Time;

# 2. What relationships exist in a specific city.
SELECT City_Name, Relation_Name, Relation_Number FROM Relation
INNER JOIN CityRelation
ON CityRelation.Relation_Id=Relation.Id
INNER JOIN City
ON City.Id=CityRelation.City_Id;

# 3. How many trains have a given maximum speed.
SELECT Maximum_Speed, COUNT(*) AS ilość FROM Depot
GROUP BY Maximum_Speed
ORDER BY Maximum_Speed;

# 4.  Display the relationship number and how many cities it passes through.
SELECT Relation_Number, COUNT(*) AS ilość_miast FROM Relation
INNER JOIN CityRelation
ON CityRelation.Relation_Id=Relation.Id
GROUP BY Relation_Number;

# 5. How many carriers do not have relations.
SELECT Carrier_Name FROM Carrier
LEFT JOIN Relation
ON Relation.Carrier_Id=Carrier.Id
WHERE Carrier_Id is NULL;

# 6. How many carriers have relations.
SELECT Carrier_Name FROM Carrier
LEFT JOIN Relation
ON Relation.Carrier_Id=Carrier.Id
WHERE Carrier_Id is NOT NULL
GROUP BY Carrier_Name;
