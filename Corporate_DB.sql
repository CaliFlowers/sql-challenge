--NOTE FOR TA: Since table schemas from QuickDB included table names in "", calling tables required "". 

--1. List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT "Employees".emp_no, "Employees".last_name, "Employees".first_name, "Employees".sex, "Salaries".salary
FROM  "Employees"
INNER JOIN "Salaries" ON
"Employees".emp_no = "Salaries".emp_no;

  (
--2. List first name, last name, and hire date for employees who were hired in 1986.
	SELECT first_name, last_name, hire_date
    FROM "Employees"
    WHERE hire_date >= '19860101' AND hire_date < '19870101';
	  
--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
	SELECT "Departments".dept_no, "Dept_manager".emp_no, "Departments".dept_name, "Employees".last_name, "Employees".first_name, "Employees".sex 
FROM ("Employees" JOIN "Dept_manager" ON "Employees".emp_no ="Dept_manager".emp_no)
JOIN "Departments" ON "Departments".dept_no ="Dept_manager".dept_no;
	  
-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT "Dept_employees".emp_no, "Dept_employees".dept_no, "Employees".last_name, "Employees".first_name, "Employees".sex, "Departments".dept_name
FROM ("Employees" JOIN "Dept_employees" ON "Employees".emp_no ="Dept_employees".emp_no)
JOIN "Departments" ON "Departments".dept_no = "Dept_employees".dept_no;  
	  
-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name
FROM "Employees"
WHERE first_name = 'Hercules' and last_name LIKE 'B%_';
	  
-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT "Dept_employees".dept_no, "Employees".last_name, "Employees".first_name, "Employees".sex, "Departments".dept_name
FROM ("Employees" JOIN "Dept_employees" ON "Employees".emp_no ="Dept_employees".emp_no)
JOIN "Departments" ON "Departments".dept_no = "Dept_employees".dept_no	  
	  WHERE dept_name='Sales';

--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT "Dept_employees".dept_no, "Employees".last_name, "Employees".first_name, "Employees".sex, "Departments".dept_name
FROM ("Employees" JOIN "Dept_employees" ON "Employees".emp_no ="Dept_employees".emp_no)
JOIN "Departments" ON "Departments".dept_no = "Dept_employees".dept_no	  
	  WHERE dept_name='Sales' or dept_name = 'Development'
			
--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
	 SELECT last_name, COUNT(last_name) AS "namecount"
FROM public."Employees"
GROUP BY last_name
ORDER BY "namecount" DESC;
	  
-- Data Preparation for Bonus Analysis
SELECT * FROM salary_by_title
SELECT title, AVG(salary) AS "average salary"
FROM salary_by_title
GROUP BY title;
CREATE VIEW salary_by_title AS
SELECT "Employees".emp_no, "Employees".emp_title_id, "Titles".title, "Salaries".salary
FROM ("Titles" JOIN "Employees" ON "Titles".title_id = "Employees".emp_title_id)
JOIN "Salaries" on "Salaries".emp_no="Employees".emp_no
	  WHERE dept_name='Sales';