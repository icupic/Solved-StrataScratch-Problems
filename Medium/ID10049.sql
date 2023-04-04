/* Reviews of Categories
Find the top business categories based on the total number of reviews. 
Output the category along with the total number of reviews. Order by total reviews in descending order.
*/
#Solution
with recursive numbers as
    (
        select 1 as n
        union
        select n + 1
        from numbers
        where n < 15
    )


select 
substring_index(substring_index(categories, ';', n), ';', - 1) as category,
sum(review_count) as review_cnt
from yelp_business as y
join numbers as n
on n <= char_length(categories) - char_length(replace(categories, ';', '')) +1
group by category
order by review_cnt desc;