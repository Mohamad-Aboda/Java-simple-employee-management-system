UPDATE
    Employees e
SET
    e.Salary = e.Salary * 1.1
WHERE
    e.EmployeeID IN (
        SELECT
            subquery.EmployeeID
        FROM
            (SELECT
                e.EmployeeID
            FROM
                Employees e
            JOIN
                EmployeeProjects ep ON e.EmployeeID = ep.EmployeeID
            JOIN
                Projects p ON ep.ProjectID = p.ProjectID
            WHERE
                p.Budget > 100000) AS subquery
    );
