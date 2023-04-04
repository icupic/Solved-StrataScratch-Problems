/* Classify Business Type
Classify each business as either a restaurant, cafe, school, or other.
•	A restaurant should have the word 'restaurant' in the business name.
•	A cafe should have either 'cafe', 'café', or 'coffee' in the business name.
•	A school should have the word 'school' in the business name.
•	All other businesses should be classified as 'other'.
Output the business name and their classification.
*/
#Solution
select 
distinct business_name,
case
    when business_name like '%restaurant%' then 'restaurant'
    when business_name like '%cafe%' 
        or business_name like '%café%' 
        or business_name like '%coffee%' then 'cafe'
    when business_name like '%school%' then 'school'
    else 'other'
end as type

from sf_restaurant_health_violations;