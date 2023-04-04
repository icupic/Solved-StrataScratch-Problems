/* Highest Energy Consumption
Find the date with the highest total energy consumption from the Meta/Facebook data centers.
 Output the date along with the total energy consumption across all data centers.
*/
#Solution
with total_consumption as (
select date, sum(consumption) as consumption
from(
select date, consumption
from fb_eu_energy
union
select date, consumption
from fb_asia_energy
union
select date, consumption
from fb_na_energy) as t
group by date)

select *
from total_consumption
where consumption = (select max(consumption) from total_consumption)