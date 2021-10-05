SELECT * FROM Employees
SELECT * FROM Titles

SELECT e.emp_no,
e.first_name, 
e.last_name,
t.title,
t.from_date,
t.to_date
INTO challenge
FROM Employees as e
INNER JOIN Titles as t
ON e.emp_no = t.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no;

SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title

INTO unique_titles
FROM challenge
ORDER BY emp_no, from_date DESC;

-- # Employees by Job Title

SELECT COUNT(emp_no), title
--INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT DESC;

SELECT DISTINCT ON (e.emp_no)
e.emp_no, 
e.first_name, 
e.last_name,
e.birth_date,
de.from_date,
de.to_date,
t.title
INTO mentorship_eligibility
FROM Employees as e
INNER JOIN dept_emp as de
ON e.emp_no = de.emp_no
LEFT JOIN titles as t
ON de.emp_no = t.emp_no
WHERE (de.to_date = '9999-01-01' AND
	  e.birth_date BETWEEN '1965-01-01' 
	   AND '1965-12-31');