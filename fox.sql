-- Create the EmployeeDemographics table
CREATE TABLE EmployeeDemographics 
(
    EmployeeID INT PRIMARY KEY, 
    FirstName VARCHAR(50), 
    LastName VARCHAR(50), 
    Age INT, 
    Gender VARCHAR(50)
);

-- Create the EmployeeSalary table with a foreign key constraint
CREATE TABLE EmployeeSalary 
(
    EmployeeID INT PRIMARY KEY, 
    JobTitle VARCHAR(50), 
    Salary INT,
    FOREIGN KEY (EmployeeID) REFERENCES EmployeeDemographics(EmployeeID)
);

-- Insert data into EmployeeDemographics table
INSERT INTO EmployeeDemographics (EmployeeID, FirstName, LastName, Age, Gender) 
VALUES
(1001, 'Jim', 'Halpert', 30, 'Male'),
(1002, 'Pam', 'Beasley', 30, 'Female'),
(1003, 'Dwight', 'Schrute', 29, 'Male'),
(1004, 'Angela', 'Martin', 31, 'Female'),
(1005, 'Toby', 'Flenderson', 32, 'Male'),
(1006, 'Michael', 'Scott', 35, 'Male'),
(1007, 'Meredith', 'Palmer', 32, 'Female'),
(1008, 'Stanley', 'Hudson', 38, 'Male'),
(1009, 'Kevin', 'Malone', 31, 'Male');

-- Insert data into EmployeeSalary table
INSERT INTO EmployeeSalary (EmployeeID, JobTitle, Salary) 
VALUES
(1001, 'Salesman', 45000),
(1002, 'Receptionist', 36000),
(1003, 'Salesman', 63000),
(1004, 'Accountant', 47000),
(1005, 'HR', 50000),
(1006, 'Regional Manager', 65000),
(1007, 'Supplier Relations', 41000),
(1008, 'Salesman', 48000),
(1009, 'Accountant', 42000);

-- Creating a temporary table
create temporary table DREAMZ
(
Occupation varchar(50),
Dream_id INT PRIMARY KEY,
Age INT,
Car VARCHAR(50),
Wife VARCHAR(50)
);
SELECT *
FROM DREAMZ;

INSERT INTO DREAMZ
VALUES ('Engineer', '1989', '35', 'Toyota', 'Yes');

SELECT *
FROM DREAMZ;



