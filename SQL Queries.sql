Create database ola;
use ola;
create view Successful_Bookings As
select * from bookings
where Booking_Status='Success';

select * from Successful_Bookings;

Create view ride_distance_for_each_vehicle As
select Vehicle_Type, avg(Ride_Distance)
as Avg_Distance from bookings
group by Vehicle_Type;

select * from ride_distance_for_each_vehicle;

Create view canceled_rides_by_customers As
Select count(*) from bookings
where Booking_Status='Canceled by Customer';

select * from canceled_rides_by_customers;

Create view top_5_customers as
Select Customer_ID, count(Booking_ID) as total_rides
from bookings
group by Customer_ID
order by total_rides desc limit 5;

select * from top_5_customers;

create view rides_canceled_by_drivers_P_C_issue as 
select count(*) from bookings
where Canceled_Rides_by_Driver='Personal & Car related issue';

select * from rides_canceled_by_drivers_P_C_issue;

create view max_min_driver_rating As
Select max(Driver_Ratings) as max_rating,
Min(Driver_Ratings) as min_rating
from bookings where Vehicle_Type='Prime Sedan';

Select * from max_min_driver_rating;

create view UPI_payment as
select * from bookings
where Payment_Method='UPI';

select * from UPI_payment;

create view Avg_cust_rating as 
select Vehicle_Type, avg(Customer_Rating) as avg_customer_rating
from bookings
group by Vehicle_Type;

select * from Avg_cust_rating;

create view total_successful_ride_value as
select sum(Booking_Value) as total_successful_ride_value
from bookings
where Booking_Status='Success';

select * from total_successful_ride_value;

create view Incomplete_Rides_Reason as
Select Booking_ID, Incomplete_Rides_Reason
from bookings
where Incomplete_Rides='Yes';

select * from Incomplete_Rides_Reason;






