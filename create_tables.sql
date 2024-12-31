-- SQL script to create the database tables for COVID-19 data analysis
-- run create_tables.sql to set up the database structure 

-- Create the Countries table to store information about each country
CREATE TABLE Countries (
    CountryID INT PRIMARY KEY, -- Unique identifier for each country
    CountryName VARCHAR(100), -- Name of the country
    Region VARCHAR(50) -- Region or continent the country belongs to
);

-- Create the Cases table to store COVID-19 case data
CREATE TABLE Cases (
    CaseID INT PRIMARY KEY AUTO_INCREMENT, -- Unique identifier for each case record
    CountryID INT, -- Foreign key referencing the Countries table
    Date DATE, -- The date of the record
    ConfirmedCases INT, -- Total confirmed cases on the given date
    Deaths INT, -- Total deaths reported on the given date
    Recovered INT, -- Total recoveries reported on the given date
    FOREIGN KEY (CountryID) REFERENCES Countries(CountryID) -- Establish relationship with Countries table
);

-- Create the Vaccinations table to store vaccination data
CREATE TABLE Vaccinations (
    VaccinationID INT PRIMARY KEY AUTO_INCREMENT, -- Unique identifier for each vaccination record
    CountryID INT, -- Foreign key referencing the Countries table
    Date DATE, -- The date of the record
    DosesAdministered INT, -- Total doses administered on the given date
    FullyVaccinated INT, -- Total number of people fully vaccinated
    FOREIGN KEY (CountryID) REFERENCES Countries(CountryID) -- Establish relationship with Countries table
);
