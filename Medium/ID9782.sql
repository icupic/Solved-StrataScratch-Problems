/* Customer Revenue In March
Calculate the total revenue from each customer in March 2019. Include only customers who were active in March 2019.
Output the revenue along with the customer id and sort the results based on the revenue in descending order.
*/
#Solution
select cust_id, sum(total_order_cost) as total_revenue from orders
where order_date between '2019-03-01' and '2019-03-31'
group by cust_id
order by total_revenue desc;