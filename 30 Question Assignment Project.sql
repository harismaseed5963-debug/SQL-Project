-- Create Table employees
Create Table employees(
emp_id Serial Primary Key,
first_name Varchar(20) Not Null,
last_name Varchar(20) Not Null,
age INT,
gender  Varchar(10),
department Varchar(20),
city Varchar(20),
salary INT,
experience_years INT
);

--Display All Data
Select * From employees;

-- Show only employees from IT department
Select * From employees
Where department='IT';

-- display name and salary whose salary greater Than 50000
Select first_name,last_name,salary From employees
where salary>50000;


-- Show employees whose age is less than 25
Select * From employees
Where age<25;


-- Display employees who lives in karachi city
Select * From employees
Where city='Karachi';


-- Show all femlaes who works in Finance Department
Select * From employees
Where gender='Female' 
AND 
department='Finance';


-- Sort all employees by salry in descending order
Select * From employees 
Order By salary DESC;

-- Display all employees whose salary is greater than 60000
Select * From employees 
Where salary>60000;


-- Display all employees whose experience is greater than or equal to 3 years
Select * From employees 
Where experience_years>=3;


-- List employees whose age is not equal to 30
Select * From employees 
Where age<>30;


-- Show employees whose salary is between 40000 & 70000
Select * From employees 
Where salary BETWEEn 40000 AND 70000;


-- Show all employees who works in IT department and salary greater than 50000
Select * From employees 
Where salary>50000 
AND department='IT';


-- Shwo employees who are from lahore or from karachi
Select * From employees 
Where city='Karachi'
OR city='Lahore';


-- Display those employees who are not in Sales Department
Select * From employees 
Where NOT department='Sales';


-- Show those employees who have more than 5 years experience and have salary less than 60000
Select * From employees 
Where experience_years>5 
AND salary<60000;


-- Display each employee salary with 10% increment
Select first_name,last_name,salary,salary+(salary*0.10) 
AS NEW_Salary
From employees;
 

-- show each employee salary after deduction of 5%
Select first_name,last_name,salary,salary-(salary*0.05) 
AS Deducted_Salary
From employees;


-- Display each employee salary divided by 12
Select first_name,last_name,salary/12 AS salary
From employees;


-- Add a new coloum Updated_Salary and update it with salary+(salary*0.10)
Select first_name,last_name,salary,salary+(salary*0.10) 
AS Updated_Salary
From employees;


-- Show employees whose fist name starts with 'a'
Select first_name,salary From employees
Where first_name Like'a%';


-- Show employees whose last name ends with n
Select last_name,salary 
From employees
Where last_name Like'%n';


-- Find employees whose city starts with 'ra'
Select first_name,last_name,salary,city 
From employees
Where city Like'ra%';


-- Show employees whose department is IN('HR','FInance','Sales')
Select first_name,last_name,salary,city,department 
From employees
Where department 
IN('HR','Finance','Sales');


-- Add a new column to the table named "grade"
Alter Table employees
ADD COLUMN grade Varchar(5);


--Update the grade to 'A' for those whose salary is greater than 70000,& 'B' for the rest




-- Delete all employees whose experience is less than 2 years

DELETE From employees
WHere experience_years<2;


-- Rename the column city To location

Alter Table employees
Rename COLUMN city To location;


Select * FROm employees;

-- Display the total number of employees in the company
Select COUNT(*) AS Total_Employees
From employees;

-- Find the total salary paid to empoyees
Select SUM(salary) AS Total_Salary
From employees;

-- Show the Average Salary of all employees
Select AVG(salary) AS Average_salary
From employees;

-- Find the hihgest salary in the company
Select MAX(salary) AS highest_salary
From  employees;

-- Find the Lowest Salary in the company
Select MIN(salary) AS highest_salary
From  employees;

-- Select the number of unique departments
Select COUNT(DiSTINCT department) AS total_departments
From employees;

-- SElect the total salary paid by each department
Select department,SUM(salary) AS dept_total_salary
From employees
Group  By department;

-- Show the Average Salary of each department 
Select department,AVG(salary) AS dept_total_salary
From employees
Group  By department;

-- Show the number of employees in each city
Select location,COUNT(*) AS toatal_employee_each_city
From employees
Group BY location;

-- Select the maximum salary in each department
Select department, MAX(salary) AS Highest_Salary
From employees
Group By department;

-- Select the minimum salary in each gender
Select gender, MIN(salary) AS Minimum_Salary
From employees
Group By gender;

-- Display only those departments where the average salary is greater than 60,000.
















