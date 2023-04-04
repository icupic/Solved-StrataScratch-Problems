/* Highest Cost Orders
Find the customer with the highest daily total order cost between 2019-02-01 to 2019-05-01. 
If customer had more than one order on a certain day, sum the order costs on daily basis. 
Output customer's first name, total cost of their items, and the date.
For simplicity, you can assume that every first name in the dataset is unique.
*/
#Solution

with summed_table as(select first_name, sum(total_order_cost) as summed, order_date  
from customers
join orders
on customers.id = orders.cust_id
where order_date between '2019-02-01' and '2019-05-01'
group by order_date, customers.id)

select first_name, max(summed) as total, order_date
from summed_table;