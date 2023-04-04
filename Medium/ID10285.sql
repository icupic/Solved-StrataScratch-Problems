/*Acceptance Rate By Date
What is the overall friend acceptance rate by date? Your output should have the rate of acceptances by the date the request was sent. Order by the earliest date to latest.
Assume that each friend request starts by a user sending (i.e., user_id_sender) a friend request to another user (i.e., user_id_receiver) that's logged in the table with action = 'sent'. 
If the request is accepted, the table logs action = 'accepted'. 
If the request is not accepted, no record of action = 'accepted' is logged.
*/
#Solution

select f.date,  count(f1.user_id_receiver) / count(f.user_id_sender) as rate
from (select * from fb_friend_requests where action = 'sent') as f
left join (select * from fb_friend_requests where action = 'accepted') as f1
on f.user_id_sender = f1.user_id_sender
and f.user_id_receiver = f1.user_id_receiver
group by f.date;