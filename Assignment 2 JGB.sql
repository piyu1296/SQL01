SELECT * FROM sakila.address;
#1.insert 3 to 5 records in table
insert into person(pid,pname,address)
 values
(3,'jayashree','jejuri'),
(4,'priya','kolhapur'),
(5,'seema','diva'),
(6,'dipak','vagholi'),
(7,'avikumar','himachal pradesh'),
(8,'shivam','kashmir'),
(10,'prithvi','meghalaya'),
(15,'iqbal','bihar');

#2.increase the salary of employee by 10% whose job is 'Manager'
select payment_id,payment_date,amount+'10%' as'Increased Amount' from sakila.payment;

#3. delete all the records in student table
set sql_safe_updates=0;
delete from preeti.student;
truncate table preeti.student;

#4. list the name of employee who is in cityid 
select address,city_id from sakila.address where city_id in(10); 

#5.display address who is in city 30 and district='QLD'
select address_id,address,district,city_id,phone from sakila.address where city_id between 500 and 600 and district='qld';

#6.employee whose hire date is '1-jan-1999'
select customer_id,amount,last_update from sakila.payment where last_update like '2006-02-15%';

#7.display rows having 2 t in employee name
select * from sakila.actor where last_name like '%t%t%';

#8.count total no of employees
select count(*) from preeti.emp1;
#9.display the min imum and maximum salary
select min(amount),max(amount) from sakila.payment;
#10.display total no of employee having salary > than 3000
select count(amount) from sakila.payment where amount>11;
#11.print department wise count of employee
select staff_id,count(staff_id) as 'staff count' 
from sakila.payment 
group by staff_id order by staff_id;
#12.print job wise total salary
select district,sum(city_id) sum from sakila.address group by  district;
#13.print department wise maximum salary
select district,max(city_id) max_city_id from sakila.address group by district;
#14.print job wise average salary
select district,avg(city_id) average from sakila.address group by district;
#15.print total no of employee  workingbin departmet 20
select district ,count(district) from sakila.address where city_id=444;
#16.total no of employee working in department 10 and having job ad manager
select count(district) from sakila.address 
where city_id=300 and address like '%san%'  ; 
#17.display total no of employee working in department 10 having comm is null
select count(district) from sakila.address 
where city_id=300 and address2 is null  ;





