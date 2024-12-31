--Creating employee table

CREATE TABLE employee_info(
empId INTEGER PRIMARY KEY,
empName Varchar(20) NOT NULL,
empSalary Decimal(10,2) NOT NULL,
job varchar(20),
phone varchar(20),
deptId INTEGER NOT NULL
)

--Creating department table

CREATE TABLE department_info
(
deptId integer not null,
deptName varchar(20) not null,
deptLocation varchar(50)
)



