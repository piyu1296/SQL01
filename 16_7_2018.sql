use preeti;
show tables;
show  columns from person;
use sakila;

select * from address where city_id in(300,449,361);

select * from address where city_id not in (300,444,449,500,239,300);

select district,
count(city_id) as count_of_city_id 
from address
group by city_id having count_of_city_id>1;

select * from address order by address ;

select * from address order by address desc;

select distinct(city_id) address order by district desc;



