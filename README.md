# Pewlett-Hackard-Analysis.
Overview
The purpose of this analysis was to provide insight so that HR is better suited to replace a large number of senior employees. Bobby is tasked with finding out exactly how many employees should be expected to retire and also may be eligible to participate in a mentorship program.
Results
About 30K Senior Engineers will be retiring, making it the position that will be replaced the most. 
50% of retiring staff are in engineering roles.
There are 1549 eligible mentors in the group of retiring employees.
Of the eligible mentors, 293 are Senior Engineers.
48% of the mentors were related to the engineering job role.
Summary
There are 90,400 role that will need to be filled as the silver tsunami begins.
There are not enough mentors to accommodate a complete staff replacement but the number could work if employees are replaced in waves. 
--To find out how many mentors are available per title
SELECT COUNT(emp_no), title
FROM mentorship_eligibility
GROUP BY title
ORDER BY COUNT DESC;

-- Number of employees approaching retirement
SELECT COUNT(first_name)
FROM employees
WHERE (birth_date BETWEEN '1960-01-01' AND '1965-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1995-12-31');