-- Retrieve all records from EmployeeDemographics table
SELECT *
FROM EmployeeDemographics;

-- Retrieve distinct records from EmployeeDemographics table
SELECT DISTINCT *
FROM EmployeeDemographics;

-- Create a view to show employees who are male
CREATE VIEW e_hire AS
SELECT EmployeeID, FirstName, age
FROM EmployeeDemographics
WHERE FirstName LIKE '%ael%';

-- Retrieve all records from the view employee_hire_years
SELECT *
FROM e_hire;
