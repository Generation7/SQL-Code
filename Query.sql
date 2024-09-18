SELECT *
FROM employeedemographics;

SELECT *
FROM employeesalary;

SELECT *
FROM employeedemographics AS dem
INNER JOIN employeesalary AS sal
	ON dem.EmployeeID=sal.EmployeeID;
    
    SELECT *
    FROM employeedemographics AS dem
    LEFT OUTER JOIN employeesalary AS sal
		ON dem.EmployeeID=sal.EmployeeID;
        
        SELECT LastName, length(LastName)
        FROM employeedemographics;
        
        SELECT FirstName, Age, Gender,
        CASE
			WHEN Age <=32 THEN 'Adult'
            else 'Old'
            END
        FROM employeedemographics;
        
        SELECT *,
        SUM(Salary) OVER(PARTITION BY JobTitle) AS SUM,
        row_number() OVER(partition by JobTitle) AS ROW_NUM
        FROM employeesalary sal;
        
        SELECT *
        FROM employeesalary
        WHERE Salary > 42000;
        
        CREATE PROCEDURE large_salaries()
        SELECT *
        FROM employeesalary
        WHERE Salary > 42000;
                       
        call large_salaries();
        
        
        
        
        
        
        
        
        
