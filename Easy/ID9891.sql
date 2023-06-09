/* Customer Details
Find the details of each customer regardless of whether the customer made an order. 
Output the customer's first name, last name, and the city along with the order details.
You may have duplicate rows in your results due to a customer ordering several of the same items. 
Sort records based on the customer's first name and the order details in ascending order.
*/
#Solution

select first_name, last_name, city, orders.*
from customers
left join orders
on customers.id = orders.cust_id
order by first_name, orders.order_details;