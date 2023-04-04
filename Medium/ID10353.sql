/* Workers With The Highest Salaries
You have been asked to find the job titles of the highest-paid employees.
Your output should include the highest-paid title or multiple titles with the same salary.
*/
#Solution
select worker_title
from worker
join title
on worker.worker_id = title.worker_ref_id
where salary = (select max(salary) from worker)