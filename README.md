Employee Data Analysis Using SQL
Project Overview

This project demonstrates comprehensive SQL skills applied to business data analysis. The main focus is on analyzing employee data to extract insights about salary, experience, department, location, and performance grades.

As a Business Data Analyst, this project shows how to transform raw data into actionable business insights using SQL queries.

Key Features & Functionalities

Table Creation & Data Management

Created employees table with essential employee details: first_name, last_name, age, gender, department, location, salary, experience_years.

Added and updated new columns (grade, Updated_Salary) to support business analysis.

Filtering & Conditional Queries

Extracted employees based on:

Department (e.g., IT, Finance)

Salary ranges (greater than 50,000, between 40,000–70,000)

Age groups (<25, <>30)

Location (e.g., Karachi, Lahore)

Gender and combined conditions (e.g., Female in Finance)

Data Sorting & Pattern Matching

Sorted employees by salary in descending order.

Used LIKE for pattern-based filtering (first_name starts with 'A', last_name ends with 'n', city starts with 'Ra').

Aggregations & Analytics

Counted total employees and departments.

Calculated SUM, AVG, MAX, and MIN for salaries.

Determined department-wise salary totals and average salaries.

Analyzed employee distribution by location and gender.

Conditional Updates & Business Logic

Updated grade based on salary thresholds (A for >70,000, B for the rest).

Calculated salary increments (10%) and deductions (5%) per employee.

Deleted records based on experience criteria (<2 years).

Renamed columns to better reflect business context (city → location).

Group-Level Insights

Departments with average salary > 60,000.

Maximum salary per department.

Minimum salary by gender.

Employee counts and salary distributions per department and location.

Example Queries
-- Update grade based on salary
UPDATE employees
SET grade = CASE
    WHEN salary > 70000 THEN 'A'
    ELSE 'B'
END;
-- Departments with average salary greater than 60,000
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 60000;
-- Display salary after 10% increment
SELECT first_name, last_name, salary, salary + (salary * 0.10) AS Updated_Salary
FROM employees;
