/*  Number Of Bathrooms And Bedrooms
Find the average number of bathrooms and bedrooms for each city’s property types. 
Output the result along with the city name and the property type.
*/
#Solution

select city, property_type, avg(bathrooms) as_bathrooms, avg(bedrooms) as avg_bedrooms
from airbnb_search_details
group by property_type, city;