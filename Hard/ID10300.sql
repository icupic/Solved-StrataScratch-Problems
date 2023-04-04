/* Premium vs Freemium
Find the total number of downloads for paying and non-paying users by date. Include only records where non-paying customers have more downloads than paying customers. 
The output should be sorted by earliest date first and contain 3 columns date, non-paying downloads, paying downloads.
*/
#Solution
with  t1 as (
select user.user_id, user.acc_id, paying_customer from ms_user_dimension as user
join ms_acc_dimension as acc
on user.acc_id = acc.acc_id
)

select 
date,
sum(if (paying_customer='yes', downloads, 0)) as paying_customers,
sum(if (paying_customer='no', downloads, 0)) as non_paying_customers
from t1
join ms_download_facts as ms
on t1.user_id = ms.user_id
group by date
having non_paying_customers > paying_customers
order by date;