/* Finding User Purchases
Write a query that'll identify returning active users. 
A returning active user is a user that has made a second purchase within 7 days of any other of their purchases. 
Output a list of user_ids of these returning active users

*/
#Solution
select distinct a1.user_id
from amazon_transactions as a1
join amazon_transactions as a2
on a1.user_id = a2.user_id
and a1.id <> a2.id
and a1.created_at >= a2.created_at
where datediff(a1.created_at, a2.created_at) <= 7
