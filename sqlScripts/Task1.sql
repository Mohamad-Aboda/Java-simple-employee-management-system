SELECT
    'Welcome to task1 !' AS Message,
    e.EmployeeID,
    e.FirstName,
    e.LastName,
    p.ProjectName,
    COUNT(ep.ProjectID) AS ProjectCount
FROM
    Employees e
JOIN
    EmployeeProjects ep ON e.EmployeeID = ep.EmployeeID
JOIN
    Projects p ON ep.ProjectID = p.ProjectID
GROUP BY
    e.EmployeeID, e.FirstName, e.LastName, p.ProjectName
HAVING
    ProjectCount >= 2;
