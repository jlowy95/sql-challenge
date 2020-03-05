--SQL Homework
/*ERD Notes
Departments as dept
-
DepartmentID PK int
DepartmentName string

Dept_Emp
-
EmployeeID int FK >- emp.EmployeeID
DepartmentID int FK >- dept.DepartmentID
from_date date
to_date date

Dept_Manager
-
DepartmentID int FK >- dept.DepartmentID
EmployeeID int FK >- emp.EmployeeID
from_date date
to_date date

Employees as emp
-
EmployeeID int PK
birthdate date
first_Name string
last_name string
gender varchar(1)
hire_date date

Salary
-
EmployeeID int FK >- emp.EmployeeID
salary int
from_date date
to_date date

Titles
-
EmployeeID int FK >- emp.EmployeeID
title string
from_date date
to_date date*/

DROP TABLE IF EXISTS Employees;
DROP TABLE IF EXISTS Departments;
DROP TABLE IF EXISTS Dept_Emp;
DROP TABLE IF EXISTS Dept_Manager;
DROP TABLE IF EXISTS Salary;
DROP TABLE IF EXISTS Titles;

CREATE TABLE Employees(
	EmployeeID int PRIMARY KEY NOT NULL,
	birthdate date NOT NULL,
	first_Name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	gender varchar(1) NOT NULL,
	hire_date date NOT NULL
);
CREATE TABLE Departments(
	DepartmentID VARCHAR(4) NOT NULL PRIMARY KEY,
	name VARCHAR(30) NOT NULL
);
CREATE TABLE Dept_Emp(
	EmployeeID int NOT NULL,
	DepartmentID VARCHAR(4) NOT NULL,
	from_date date NOT NULL,
	to_date date NOT NULL,
	FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
	FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);
CREATE TABLE Dept_Manager(
	DepartmentID VARCHAR(4) NOT NULL,
	EmployeeID int NOT NULL,
	from_date date NOT NULL,
	to_date date NOT NULL,
	FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID),
	FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);
CREATE TABLE Salary(
	EmployeeID int NOT NULL,
	salary int NOT NULL,
	from_date date NOT NULL,
	to_date date NOT NULL,
	FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);
CREATE TABLE Titles(
	EmployeeID int NOT NULL,
	title VARCHAR(30) NOT NULL,
	from_date date NOT NULL,
	to_date date NOT NULL,
	FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);