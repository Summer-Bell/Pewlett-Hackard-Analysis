--Deliverable 1
SELECT e.emp_no, e.first_name, e.last_name, ti.title, ti.from_date, ti.to_date
INTO retirement_titles
FROM employees as e
WHERE e.birth_date >= ('1952-01-01')
	AND e.birth_date <= ('1955-12-31')
ORDER BY e.emp_no; 

SELECT * FROM retirement_titles

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;

SELECT * FROM unique_titles

SELECT count(title), title
INTO Retiring_titles 
FROM unique_titles
GROUP BY title
ORDER BY count DESC

-- Deliverable 2
SELECT DISTINCT ON (e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date, de.from_date, de.to_date, ti.title
--INTO mentorship_eligibilty
FROM dept_emp as de
JOIN  employees as e
ON (e.emp_no = de.emp_no)
LEFT JOIN  titles as ti
ON (e.emp_no = ti.emp_no)
WHERE de.to_date = ('9999-01-01')
	AND e.birth_date >= ('1965-01-01')
	AND e.birth_date <= ('1965-12-31')
ORDER BY e.emp_no; 

