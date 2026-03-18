
create database Employee_details

use Employee_details

CREATE TABLE Employees(
EmployeeID INT PRIMARY KEY,
FirstName VARCHAR(50),
LastName VARCHAR(50),
Salary DECIMAL(10,2),
HireDate DATE,
);

INSERT INTO Employees(EmployeeID, FirstName, LastName, Salary, HireDate) VALUES
(1,'Pramod','Herald', 75000.00, '2026-04-12'),
(2,'Raj','Katti', 79000.00, '2026-02-12'),
(3,'Rinku','KPH', 85000.00, '2026-04-24');


select FirstName from Employees


select EmployeeID,FirstName from Employees


select EmployeeID,concat(FirstName, ' ', LastName )[FullName] from Employees