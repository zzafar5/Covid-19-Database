-- SQL script containing analytical queries for the COVID-19 database

-- Query 1: Total cases by country
-- This query calculates the total number of confirmed cases for each country.
SELECT CountryName, SUM(ConfirmedCases) AS TotalCases
FROM Cases
JOIN Countries ON Cases.CountryID = Countries.CountryID
GROUP BY CountryName
ORDER BY TotalCases DESC;

-- Query 2: Daily new cases for a specific country
-- This query calculates the daily increase in confirmed cases for the United States.
SELECT Date, 
       ConfirmedCases - LAG(ConfirmedCases, 1) OVER (PARTITION BY CountryID ORDER BY Date) AS DailyIncrease
FROM Cases
WHERE CountryID = 1; -- Replace 1 with the desired CountryID

-- Query 3: Total vaccinations by country
-- This query calculates the total number of fully vaccinated people for each country.
SELECT CountryName, SUM(FullyVaccinated) AS FullyVaccinatedPeople
FROM Vaccinations
JOIN Countries ON Vaccinations.CountryID = Countries.CountryID
GROUP BY CountryName
ORDER BY FullyVaccinatedPeople DESC;

-- Query 4: Recovery rates by country
-- This query calculates the recovery rate as a percentage for each country.
SELECT CountryName, 
       ROUND(SUM(Recovered) * 100.0 / SUM(ConfirmedCases), 2) AS RecoveryRate
FROM Cases
JOIN Countries ON Cases.CountryID = Countries.CountryID
GROUP BY CountryName
ORDER BY RecoveryRate DESC;
