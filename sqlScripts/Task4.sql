DELETE FROM
    Employees
WHERE
    Age > 40
    AND EmployeeID NOT IN (SELECT EmployeeID FROM EmployeeProjects);
