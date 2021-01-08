/*
subqueries = inner queries = nested queries
they are part of another query, called an outer query = outer select

*/

SELECT *
FROM dept_manager;

#Select the first and last name from the "Employees" table for the same
# employee numbers that can be found in the "Department Manager" table

SELECT 
    e.first_name, e.last_name
FROM
    employees e
WHERE
    e.emp_no IN (SELECT 
            dm.emp_no
        FROM
            dept_manager dm);


/*
1) the SQl engine starts by running the inner query
2) then it uses its returned output, which is intermediate, to 
	execute the outer query 
*/

# exercise
SELECT 
    *
FROM
    dept_manager
WHERE emp_no IN (SELECT emp_no FROM employees WHERE hire_date 
BETWEEN '1990-01-01' and '1995-01-01');
    

