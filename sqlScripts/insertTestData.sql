-- Insert data into Positions table
INSERT INTO Positions (PositionName) VALUES
('Software Engineer'),
('DevOps Engineer'),
('Database Administrator'),
('Project Manager');

-- Insert data into Employees table
INSERT INTO Employees (FirstName, LastName, Age, PositionID, Salary) VALUES
('John', 'Doe', 28, 1, 75000.00),
('Jane', 'Smith', 35, 2, 85000.00),
('Alice', 'Johnson', 30, 3, 90000.00),
('Bob', 'Williams', 40, 4, 100000.00);

-- Insert data into Projects table
INSERT INTO Projects (ProjectName, Budget, StartDate, EndDate) VALUES
('Project A', 120000.00, '2023-01-01', '2023-06-30'),
('Project B', 90000.00, '2023-02-15', '2023-08-31'),
('Project C', 150000.00, '2023-03-10', '2023-12-15');

-- Insert data into EmployeeProjects table
INSERT INTO EmployeeProjects (EmployeeID, ProjectID) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 1),
(4, 3);

-- Insert data into SalaryGrades table
INSERT INTO SalaryGrades (PositionID, MinSalary, MaxSalary) VALUES
(1, 70000.00, 90000.00),
(2, 80000.00, 100000.00),
(3, 90000.00, 110000.00),
(4, 100000.00, 120000.00);
