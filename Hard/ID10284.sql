/* Popularity Percentage
Find the popularity percentage for each user on Meta/Facebook. 
The popularity percentage is defined as the total number of friends the user has divided by the total number of users on the platform, then converted into a percentage by multiplying by 100.
Output each user along with their popularity percentage. Order records in ascending order by user id.
The 'user1' and 'user2' column are pairs of friends.
*/
#Solution
with grouped_table as (
    select user1 as user_id, count(user2) as n from facebook_friends
    group by user1
    union
    select user2 as user_id, count(user1) as n from facebook_friends
    group by user2
)

select user_id,
sum(n) / (select count(*) from facebook_friends) * 100 as popularity
from grouped_table
group by user_id
order by user_id
