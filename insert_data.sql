-- SQL script to insert sample data into the COVID-19 database tables

-- Insert data into the Countries table
INSERT INTO Countries (CountryID, CountryName, Region)
VALUES 
(1, 'United States', 'North America'), -- Country ID 1: United States
(2, 'India', 'Asia'), -- Country ID 2: India
(3, 'Brazil', 'South America'); -- Country ID 3: Brazil

-- Insert data into the Cases table
INSERT INTO Cases (CountryID, Date, ConfirmedCases, Deaths, Recovered)
VALUES
(1, '2024-12-01', 50000000, 800000, 40000000), -- US data for December 1, 2024
(2, '2024-12-01', 40000000, 600000, 35000000), -- India data for December 1, 2024
(3, '2024-12-01', 30000000, 500000, 28000000); -- Brazil data for December 1, 2024

-- Insert data into the Vaccinations table
INSERT INTO Vaccinations (CountryID, Date, DosesAdministered, FullyVaccinated)
VALUES
(1, '2024-12-01', 45000000, 25000000), -- US vaccination data for December 1, 2024
(2, '2024-12-01', 35000000, 20000000), -- India vaccination data for December 1, 2024
(3, '2024-12-01', 30000000, 18000000); -- Brazil vaccination data for December 1, 2024
