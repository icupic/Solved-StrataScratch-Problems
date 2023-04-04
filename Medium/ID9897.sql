/* Highest Salary In Department
Find the employee with the highest salary per department.
Output the department name, employee's first name along with the corresponding salary.
*/
#Solution
select department, first_name, salary as highest_salary 
from employee 
where salary in (select max(salary) from employee group by department);