# COVID-19 SQL Analysis Project

## Project Overview
This project is designed to showcase my first project in SQL and database management skills by analyzing COVID-19 data. 
It includes scripts to create the database structure, insert sample data, and run analytical queries 
to extract insights.

## Database Structure
The database consists of three main tables:
1. **Countries**:
   - Stores country and region information.
2. **Cases**:
   - Tracks daily COVID-19 cases, deaths, and recoveries.
3. **Vaccinations**:
   - Tracks daily vaccination progress by country.

## Key Queries
1. **Total Cases by Country**:
   ```sql
   SELECT CountryName, SUM(ConfirmedCases) AS TotalCases
   FROM Cases
   JOIN Countries ON Cases.CountryID = Countries.CountryID
   GROUP BY CountryName
   ORDER BY TotalCases DESC;
