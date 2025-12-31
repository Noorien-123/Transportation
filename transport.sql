create database transportation;
#1 Display the first 10 transportation records.
SELECT * FROM transportation123 LIMIT 10;

#2 How many trips are recorded?
SELECT COUNT(*) AS total_trips FROM transportation123;

#3 What is the average number of vehicles recorded?
SELECT AVG(Vehicle_Count) AS avg_vehicle_count
FROM transportation123;

#4 How many records for each vehicle type?
SELECT Vehicle_Type, COUNT(*) AS total_records FROM transportation123
GROUP BY Vehicle_Type;

#5 Count records by traffic density level.
SELECT Traffic_Density, COUNT(*) AS count FROM transportation123
GROUP BY Traffic_Density;

#6 How many records have accidents?
SELECT Accident_Occurred, COUNT(*) AS total FROM transportation123
GROUP BY Accident_Occurred;

#7 Show count of accidents by severity.
SELECT Accident_Severity, COUNT(*) AS severity_count
FROM transportation123 WHERE Accident_Occurred = 'Yes'
GROUP BY Accident_Severity;

#8 How many alerts were generated?
SELECT Alert_Generated, COUNT(*) AS alert_count FROM transportation123
GROUP BY Alert_Generated;

#9 Roads with highest traffic
SELECT Road_ID, SUM(Vehicle_Count) AS total_vehicles FROM 
transportation123 GROUP BY Road_ID     ORDER BY total_vehicles DESC
LIMIT 5;

#10 Roads with both high traffic and accidents 
SELECT DISTINCT a.Road_ID from transportation123 a
JOIN transportation123 b
ON a.Road_ID = b.Road_ID
where a.Traffic_Density = 'High'
and b.Accident_Occurred = 'Yes';

