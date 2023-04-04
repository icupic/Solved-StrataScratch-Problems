/*Employee and Manager Salaries
Find employees who are earning more than their managers. 
Output the employee's first name along with the corresponding salary.
*/
#Solution
select e.first_name, e.salary from employee e
join employee m
on e.manager_id = m.id
where e.salary > m.salary;