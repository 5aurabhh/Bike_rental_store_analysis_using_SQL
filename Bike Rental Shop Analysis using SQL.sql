create database bike_rental;
use bike_rental;

drop table if exists customer;

create table customer(
	id		int primary key,
	name	varchar(30),
	email	varchar(50)
);

drop table if exists bike;
create table bike(
	id					int primary key,
	model				varchar(50),
	category			varchar(50),
	price_per_hour		decimal,
	price_per_day		decimal,
	status				varchar(20)
);


drop table if exists rental;
create table rental(
	id					int primary key,
	customer_id			int references customer(id),
	bike_id				int references bike(id),
	start_timestamp		timestamp,
	duration			int,
	total_paid			decimal
);


drop table if exists membership_type;
create table membership_type
(
	id				int primary key,
	name			varchar(50),
	description		varchar(500),
	price			decimal
);


drop table if exists membership;
create table membership
(
	id					int primary key,
	membership_type_id	int references membership_type(id),
	customer_id			int references customer(id),
	start_date			date,
	end_date			date,
	total_paid			decimal
);



insert into customer values(1,	'John Doe',			'john.doe@example.com');
insert into customer values(2,	'Alice Smith',		'alice.smith@example.com');
insert into customer values(3,	'Bob Johnson',		'bob.johnson@example.com');
insert into customer values(4,	'Eva Brown',		'eva.brown@example.com');
insert into customer values(5,	'Michael Lee',		'michael.lee@example.com');
insert into customer values(6,	'Sarah White',		'sarah.white@example.com');
insert into customer values(7,	'David Wilson',		'david.wilson@example.com');
insert into customer values(8,	'Emily Davis',		'emily.davis@example.com');
insert into customer values(9,	'Daniel Miller',	'daniel.miller@example.com');
insert into customer values(10,	'Olivia Taylor',	'olivia.taylor@example.com');


insert into bike values(1,	'Mountain Bike 1'	,'mountain bike'	,10.00	,50.00	,'available');
insert into bike values(2,	'Road Bike 1'	,'road bike',12.00	,60.00	,'available');
insert into bike values(3,	'Hybrid Bike 1'	,'hybrid'	,8.00	,40.00	,'rented');
insert into bike values(4,	'Electric Bike 1'	,'electric',15.00	,75.00	,'available');
insert into bike values(5,	'Mountain Bike 2'	,'mountain bike'	,10.00	,50.00	,'out of service');
insert into bike values(6,	'Road Bike 2'	,'road bike',12.00	,60.00	,'available');
insert into bike values(7,	'Hybrid Bike 2'	,'hybrid'	,8.00	,40.00	,'out of service');
insert into bike values(8,	'Electric Bike 2'	,'electric',15.00	,75.00	,'available');
insert into bike values(9,	'Mountain Bike 3'	,'mountain bike'	,10.00	,50.00	,'rented');
insert into bike values(10,	'Road Bike 3'	,'road bike',12.00	,60.00	,'available');


insert into rental values(1,	1,	1,	'2022-11-01 10:00:00',	240,	50.00);
insert into rental values(2,	1,	1,	'2022-11-02 10:00:00',	245,	50.00);
insert into rental values(3,	1,	1,	'2022-11-03 10:00:00',	250,	50.00);
insert into rental values(4,	1,	1,	'2022-11-04 10:00:00',	235,	50.00);
insert into rental values(5,	1,	1,	'2022-12-05 10:00:00',	155,	50.00);
insert into rental values(6,	2,	2,	'2022-12-08 11:00:00',	250,	60.00);
insert into rental values(7,	3,	3,	'2022-12-13 12:00:00',	245,	40.00);
insert into rental values(8,	1,	1,	'2023-01-05 10:00:00',	240,	50.00);
insert into rental values(9,	2,	2,	'2023-01-08 11:00:00',	235,	60.00);
insert into rental values(10,	3,	3,	'2023-02-13 12:00:00',	245,	40.00);
insert into rental values(11,	1,	1,	'2023-03-05 10:00:00',	250,	50.00);
insert into rental values(12,	2,	2,	'2023-03-08 11:00:00',	355,	60.00);
insert into rental values(13,	3,	3,	'2023-04-13 12:00:00',	240,	40.00);
insert into rental values(14,	1,	1,	'2023-04-01 10:00:00',	235,	50.00);
insert into rental values(15,	1,	6,	'2023-05-01 10:00:00',	245,	60.00);
insert into rental values(16,	1,	2,	'2023-05-01 10:00:00',	250,	60.00);
insert into rental values(17,	1,	3,	'2023-06-01 10:00:00',	235,	40.00);
insert into rental values(18,	1,	4,	'2023-06-01 10:00:00',	255,	75.00);
insert into rental values(19,	1,	5,	'2023-07-01 10:00:00',	240,	50.00);
insert into rental values(20,	2,	2,	'2023-07-02 11:00:00',	445,	60.00);
insert into rental values(21,	3,	3,	'2023-07-03 12:00:00',	250,	40.00);
insert into rental values(22,	4,	4,	'2023-08-04 13:00:00',	235,	75.00);
insert into rental values(23,	5,	5,	'2023-08-05 14:00:00',	555,	50.00);
insert into rental values(24,	6,	6,	'2023-09-06 15:00:00',	240,	60.00);
insert into rental values(25,	7,	7,	'2023-09-07 16:00:00',	245,	40.00);
insert into rental values(26,	8,	8,	'2023-09-08 17:00:00',	250,	75.00);
insert into rental values(27,	9,	9,	'2023-10-09 18:00:00',	335,	50.00);
insert into rental values(28,	10,	10,	'2023-10-10 19:00:00',	255,	60.00);
insert into rental values(29,	10,	1,	'2023-10-10 19:00:00',	240,	50.00);
insert into rental values(30,	10,	2,	'2023-10-10 19:00:00',	245,	60.00);
insert into rental values(31,	10,	3,	'2023-10-10 19:00:00',	250,	40.00);
insert into rental values(32,	10,	4,	'2023-10-10 19:00:00',	235,	75.00);


insert into membership_type values(1,'Basic Monthly',	'Unlimited rides with non-electric bikes. Renews monthly.',	100.00);
insert into membership_type values(2,'Basic Annual',	'Unlimited rides with non-electric bikes. Renews annually.',500.00);
insert into membership_type values(3,'Premium Monthly',	'Unlimited rides with all bikes. Renews monthly.',	200.00);


insert into membership values(1,	2,	3,	'2023-08-01',	'2023-08-31',	500.00);
insert into membership values(2,	1,	2,	'2023-08-01',	'2023-08-31',	100.00);
insert into membership values(3,	3,	4,	'2023-08-01',	'2023-08-31',	200.00);
insert into membership values(4,	1,	1,	'2023-09-01',	'2023-09-30',	100.00);
insert into membership values(5,	2,	2,	'2023-09-01',	'2023-09-30',	500.00);
insert into membership values(6,	3,	3,	'2023-09-01',	'2023-09-30',	200.00);
insert into membership values(7,	1,	4,	'2023-10-01',	'2023-10-31',	100.00);
insert into membership values(8,	2,	5,	'2023-10-01',	'2023-10-31',	500.00);
insert into membership values(9,	3,	3,	'2023-10-01',	'2023-10-31',	200.00);
insert into membership values(10,	3,	1,	'2023-11-01',	'2023-11-30',	200.00);
insert into membership values(11,	2,	5,	'2023-11-01',	'2023-11-30',	500.00);
insert into membership values(12,	1,	2,	'2023-11-01',	'2023-11-30',	100.00);



select * from customer;
select * from bike;
select * from rental;
select * from membership_type;
select * from membership;

/* Question 1. Emily would like to know how many bikes the shop owns by category. Can you get this for her? 
Display the category name and the number of bikes the shop owns in each category (call this column 
number_of_bikes ). 
Show only the categories where the number of bikes is greater than 2
*/
select category, count(*) as number_of_bikes 
from bike
group by category
having count(*) > 2;

select *
from bike
where model like "%Mountain%";

/*Question 2. Emily needs a list of customer names with the total number of 
memberships purchased by each.
For each customer, display the customer's name and the count of 
memberships purchased (call this column 
membership_count ). 
Sort the results by membership_count , starting with the customer who has purchased 
the highest number of memberships.
 Keep in mind that some customers may not have purchased any 
memberships yet. 
In such a situation, display 0 for the membership_count . */
select * from customer;
select * from bike;
select * from rental;
select * from membership_type;
select * from membership;
select name, count(customer_id) as membership_count
from membership right join customer
on customer.id = membership.customer_id
group by name
order by count(customer_id) desc;

/*Question 3.  Emily is working on a special offer for the winter months. Can you help her prepare a list of new rental prices?
 For each bike, display its ID, category, old price per hour (call this column old_price_per_hour ), 
 discounted price per hour (call it new_price_per_hour ), old 
price per day (call it old_price_per_day ), and discounted price per day (call it 
new_price_per_day ).
 Electric bikes should have a 10% discount for hourly rentals and a 20% 
discount for daily rentals. Mountain bikes should have a 20% discount for 
hourly rentals and a 50% discount for daily rentals. All other bikes should 
have a 50% discount for all types of rentals.
 Round the new prices to 2 decimal digits. */
select model, 
bike.id, 
category, 
price_per_hour as old_price_per_hour,

case when category = 'electric' then round(price_per_hour-(price_per_hour*(10/100)), 2)
	when category = "mountain_bike" then round(price_per_hour-(price_per_hour*(20/100)),2)
    else round(price_per_hour-(price_per_hour*(50/100)),2)
    end 
    as new_price_per_hour, 

price_per_day as old_price_per_day,

case when category = "electric" then round(price_per_day-(price_per_day*(20/100)),2)
	when category = "mountain_bike" then round(price_per_day-(price_per_day*(50/100)),2)
    else round(price_per_day-(price_per_day*(50/100)),2)
    end
    as new_price_per_day
from bike;

/*Emily is looking for counts of the rented bikes and of the available bikes in 
each category.
 Display the number of available bikes (call this column 
available_bikes_count ) and the number of rented bikes (call this column 
rented_bikes_count ) by bike category*/
select category,
count(case when status = "available" then 1 end) as available_bikes_count, 
count(case when status = "rented" then 1 end) as rented_bikes_count
from bike
group by category;



/*Question 4. Emily is preparing a sales report. She needs to know the total revenue 
from rentals by month, the total by year, and the all-time across all the 
years.
Display the total revenue from rentals for each month, the total for each 
year, and the total across all the years. Do not take memberships into 
account. There should be 3 columns: 
year, month , and revenue.
 Sort the results chronologically. Display the year total after all the month 
totals for the corresponding year. Show the all-time total as the last row.*/
select year(start_timestamp) as year, month(start_timestamp) as month, sum(total_paid) as revenue
from rental
group by year(start_timestamp), month(start_timestamp)
union all
select year(start_timestamp) as year, null as month, sum(total_paid) as revenue
from rental
group by year(start_timestamp)
union all
select null as year, null as month, sum(total_paid) as revenue
from rental;


/*Question 6. Emily has asked you to get the total revenue from memberships for each 
combination of year, month, and membership type.
 Display the year, the month, the name of the membership type (call this 
column membership_type_name ), and the total revenue (call this column 
total_revenue ) for every combination of year, month, and membership type. 
Sort the results by year, month, and name of membership type*/
select year(start_date) as year, month(start_date) as month, membership_type.name as membership_type_name, total_paid as total_revenue
from membership join membership_type
on membership.membership_type_id = membership_type.id
order by year, month, membership_type_name;



/*Question 7. Next, Emily would like data about memberships purchased in 2023, with 
subtotals and grand totals for all the different combinations of membership 
types and months.
 Display the total revenue from memberships purchased in 2023 for each 
combination of month and membership type. Generate subtotals and 
grand totals for all possible combinations.  There should be 3 columns: 
membership_type_name , month , and total_revenue .
 Sort the results by membership type name alphabetically and then 
chronologically by month.*/
select name as membership_type_name, month(membership.start_date) as month, sum(membership.total_paid) as total_revenue
from membership_type join membership
on membership_type.id = membership.membership_type_id
where year(membership.start_date) = "2023"
group by name, month(membership.start_date)
order by name, month(membership.start_date);



/* Now it's time for the final task.
 Emily wants to segment customers based on the number of rentals and 
see the count of customers in each segment. Use your SQL skills to get 
this!
 Categorize customers based on their rental history as follows:
 Customers who have had more than 10 rentals are categorized as more
than 10'.
Customers who have had 5 to 10 rentals (inclusive) are categorized as 
'between 5 and 10' .
 Customers who have had fewer than 5 rentals should be categorized as 
'fewer than 5' .
 Calculate the number of customers in each category. 
 Display two columns: rental_count_category (the rental count category) 
 and customer_count(the number of customer in each category)*/
select * from customer;
select * from bike;
select * from rental;
select * from membership_type;
select * from membership;

with cte as 
    (select customer_id, count(*), case when count(*) > 10 then 'more than 10' 
										when count(*) between 5 and 10 then 'between 5 and 10'
										else 'fewer than 5'
										end as category
    from rental
    GROUP by customer_id)
select category as rental_count_category, count(*) as customer_count
from cte 
group by category
order by customer_count;
            