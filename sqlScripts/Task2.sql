SELECT
    'Welcome to task2 !' AS Message,
    p.PositionName,
    AVG(s.MinSalary + s.MaxSalary) / 2 AS AverageSalary
FROM
    Positions p
JOIN
    SalaryGrades s ON p.PositionID = s.PositionID
GROUP BY
    p.PositionName
ORDER BY
    AverageSalary;
