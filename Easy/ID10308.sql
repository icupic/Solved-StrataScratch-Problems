/* 
Write a query that calculates the difference between the highest salaries found in the marketing and engineering departments. 
Output just the absolute difference in salaries.
*/

#Solution
select abs(
    (select max(salary) from db_employee as emp
    join db_dept as dept
    on emp.department_id = dept.id
    where dept.department = ('engineering')) 
    -
    (select max(salary) from db_employee as emp
    join db_dept as dept
    on emp.department_id = dept.id
    where dept.department = ('marketing')) 
) as salary_diff;