/* Order Details
Find order details made by Jill and Eva.
Consider the Jill and Eva as first names of customers.
Output the order date, details and cost along with the first name.
Order records based on the customer id in ascending order.
*/
#Solution

select order_date, order_details, total_order_cost, first_name
from customers as c
join orders o
on c.id = o.cust_id
where first_name in ('Jill', 'Eva');