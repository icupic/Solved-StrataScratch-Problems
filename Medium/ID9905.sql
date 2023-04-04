/* Highest Target Under Manager
Find the highest target achieved by the employee or employees who works under the manager id 13. 
Output the first name of the employee and target achieved. 
The solution should show the highest target achieved under manager_id=13 and which employee(s) achieved it.
*/
#Solution
select first_name, last_name, target
from salesforce_employees
where target = (select max(target) from salesforce_employees
where manager_id = 13)
and manager_id = 13;

