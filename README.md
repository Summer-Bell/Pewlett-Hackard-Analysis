#Pewlett-Hackard_Analysis

## Overview of Employee Database Analysis
Pewlett-Hackard has a large workforce and many of the current employees are reaching retirement age.
For them to effectively plan and prepare for this requires analysis of multiple CSV files.
By creating tables in SQL and running queries new CSV files will be generated for management to review. 

### Purpose
The SQL file [Employee_Database_challenge.sql](Queries/Employee_Database_challenge.sql) will run queries to generate the required CSV files.
One output will be [retiring_titles.csv](Data/retiring_titles.csv) which is a file that provides the number of employees retiring by title.
The other key output will be [mentorship_eligibility.csv](Data/mentorship_eligibility.csv) which will provide a list of employees eligible for the mentorship program.

## Employee Database Results
To perform the employee database analysis required joining multiple data tables into new more useful data tables.
The ERD [EmployeeDB.png](EmployeeDB.png) is a visual display of the data tables and their primary keys.
The JOIN statement was used in conjunction with the INTO statement to create new tables.
The SQL query utilized the DISTINCT ON statement to retrieve the 1st occurrence of the employee number for each data set of rows.
Doing this with the ORDER BY statement removed rows with duplicate employee numbers which was caused by employees having multiple roles.

### Four Major Points:
- Retirement Age
	- Employee birthdates were used to determine what employees will retire. 
	- The code used was 'WHERE e.birth_date >= ('1952-01-01') AND e.birth_date <= ('1955-12-31')'
	
These date ranges can be updated for ongoing analysis of expected employee retirement.
		 
- Retirement Titles - Senior Employees
	- There are 29,414 senior engineer's retiring. 
	- There are 28,254.00 senior staff retiring.
	
Senior staff makes up almost 64% of the employees retiring.

- Retirement Titles - Engineering Employees
	- There are 29,414 senior engineer's retiring. 
	- There are 14,222 engineering staff retiring.
	- There are 1,761 engineering staff retiring.
	
Half of the employees retiring have engineering titles.

The [retirement_titles.csv](Data/retirement_titles.csv) table was built by joining the employees and titles tables.
They were joined with the primary key which is employee number with this code 'INNER JOIN titles as ti
ON e.emp_no = ti.emp_no.
		
- Mentorship Eligibility
	- There are 1,549 employees eligible for mentorship. 
	- Employees eligible for mentorship were born between January 1, 1965 and December 31, 1965.
	

## Employee Database Summary

- How many roles will need to be filled as the "silver tsunami" begins to make an impact?

There are 90,398 roles that will potentially need to be filled as employees begin to retire.
The [unique_titles.csv](Data/unique_titles.csv) file should be modified to include the employee’s department as well as the employee manager.
This can be accomplished by joining the dept_manager table to the unique_titles table and adding the additional columns.
The retiring employee's managers have to have specific department's data.
With that data management can evaluate if roles need to be filled and setup mentorship partnerships.

- Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

There are only 1,549 employees identified as being eligible for the employee mentorship program.
With over 90,000 employees retiring there are more than enough qualified retirement-ready employees to mentor the next generation.
High achieving younger employees as well as employees with longevity should also be eligible for the mentorship program.
By removing the filter on birth_date and using ORDER BY to sort on from_date management could begin reviewing which employees have been with the company the longest.



