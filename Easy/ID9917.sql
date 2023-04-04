/* Average Salaries
Compare each employee's salary with the average salary of the corresponding department.
Output the department, first name, and salary of employees along with the average salary of that department.
Table: employee
*/
#Solution
select department, first_name, salary, e1.avg_salary
from employee as e
join (select department as dept, avg(salary) as avg_salary
from employee
group by dept) as e1
on e.department = e1.dept;

