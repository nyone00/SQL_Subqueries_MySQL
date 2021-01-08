/*
EXISTS : checks whether certain row values are found within a
			subquery
		- this check is conducted row by row
        - it returns a Boolean value

if a row value of a subquery exists -> True
-> the corresponding record of the outer query is extracted

if a row value does not exist -> FALSE 
-> no row value from the outer query is extracted

*/

SELECT 
    e.first_name, e.last_name
FROM
    employees e
WHERE
    EXISTS( SELECT 
            *
        FROM
            dept_manager dm
        WHERE
            dm.emp_no = e.emp_no
            )
ORDER BY emp_no;

/*
EXISTS : quicker in retrieving large amounts of data
IN : faster with smaller datasets

*/

# EXERCISE

SELECT *
FROM employees e
WHERE 
	EXISTS (SELECT *
			FROM titles t
            WHERE t.emp_no = e.emp_no and title = 'Assistant Engineer')
ORDER BY emp_no;



