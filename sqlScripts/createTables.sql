CREATE TABLE Positions (
    PositionID INT PRIMARY KEY AUTO_INCREMENT,
    PositionName VARCHAR(255) NOT NULL
);

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(255) NOT NULL,
    LastName VARCHAR(255) NOT NULL,
    Age INT,
    PositionID INT,
    Salary DECIMAL(10, 2), -- Add this line for Salary column
    FOREIGN KEY (PositionID) REFERENCES Positions(PositionID)
);


CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY AUTO_INCREMENT,
    ProjectName VARCHAR(255) NOT NULL,
    Budget DECIMAL(10, 2),
    StartDate DATE,
    EndDate DATE
);

CREATE TABLE EmployeeProjects (
    EmployeeID INT,
    ProjectID INT,
    PRIMARY KEY (EmployeeID, ProjectID),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (ProjectID) REFERENCES Projects(ProjectID)
);

CREATE TABLE SalaryGrades (
    GradeID INT PRIMARY KEY AUTO_INCREMENT,
    PositionID INT,
    MinSalary DECIMAL(10, 2),
    MaxSalary DECIMAL(10, 2),
    FOREIGN KEY (PositionID) REFERENCES Positions(PositionID)
);

