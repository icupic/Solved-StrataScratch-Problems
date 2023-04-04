/* Host Popularity Rental Prices
You’re given a table of rental property searches by users. 
The table consists of search results and outputs host information for searchers. Find the minimum, average, maximum rental prices for each host’s popularity rating. 
The host’s popularity rating is defined as below:
0 reviews: New
1 to 5 reviews: Rising
6 to 15 reviews: Trending Up
16 to 40 reviews: Popular
more than 40 reviews: Hot
Tip: The id column in the table refers to the search ID. You'll need to create your own host_id by concating price, room_type, host_since, zipcode, and number_of_reviews.
Output host popularity rating and their minimum, average and maximum rental prices.
*/
#Solution
with grouped_table as (
select concat(price, room_type, host_since, zipcode) as host_id,
 number_of_reviews ,price,
        CASE
            WHEN number_of_reviews =0 THEN 'New'
            WHEN number_of_reviews BETWEEN 1 AND 5 THEN 'Rising'
            WHEN number_of_reviews BETWEEN 6 AND 15 THEN 'Trending Up'
            WHEN number_of_reviews BETWEEN 16 AND 40 THEN 'Popular'
            WHEN number_of_reviews > 40 THEN 'Hot'
        END AS host_pop_rating
from airbnb_host_searches
group by 1,2,3)

select 
    host_pop_rating,
    min(price) as min_price,
    avg(price) as avg_price,
    max(price) as max_price
from grouped_table
group by 1;