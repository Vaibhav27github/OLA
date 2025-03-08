Create database Ola;
use Ola;

# Q-1. Retrive all successfull bookings:
create view Successfull_Bookings as
select * from bookings
where Booking_status = 'Success';

# Answer
select * from Successfull_Bookings;

# Q-2. Find the average ride distance for each vehical type:
create view ride_distance_for_each_vehical as
select Vehicle_Type, avg(Ride_Distance)
as avg_distance from bookings
group by Vehicle_Type;

# Answer
select * from ride_distance_for_each_vehical;

# Q-3. Get the total number of rides canceled by customers:
create view canceled_rides_by_customers as
select count(*) from bookings 
where Booking_Status = 'Canceled by Customer';

# Answer
select * from canceled_rides_by_customers;

# Q-4. List the top 5 customers who booked the highest number of rides:
create view top_5_Customers as
select Customer_ID, count(Booking_ID) as total_rides
from Bookings
group by Customer_ID
order by total_rides desc limit 5;

# Answer
select * from top_5_Customers;

# Q-5. Get the number of rides canceled by drivers due to personal and car-related issues:
create view rides_canceled_by_drivers_p_c_issues as
select count(*) from bookings
where Canceled_Rides_by_Driver = 'Personal & Car related issues';

#Answer
select * from rides_canceled_by_drivers_p_c_issues;

# Q-6. Find the maximum and Minimum driver rating for Prime Sedan bookings:
create view Max_Min_Diver_Rating as
select max(Driver_Ratings) as max_rating,
min(Driver_Ratings) as min_ratings
from bookings where Vehicle_Type = 'Prime Sedan';

#Answer
select * from Max_Min_Diver_Rating;

# Q-7. Retrieve all rides where payment was made using UPI:
create view UPI_Payment as
select * from bookings
where Payment_Method = 'UPI';

#Answer
select * from UPI_Payment;

# Q-8. Find the average customer rating per vehicle type:
create view AVG_Cust_Rating as
select Vehicle_Type, avg(Customer_Rating) as avg_customer_rating
from bookings
group by Vehicle_Type;

#Answer
select * from AVG_Cust_Rating;

# Q-9. Calculate the booking value of rides completed successfully:
create view total_successful_ride_value as
select sum(Booking_Value) as total_successful_ride_value
from bookings
where Booking_Status = 'Success';

# Answer
select * from total_successful_ride_value;

# Q-10. List all incomplete rides along with the reason:
create view Incomple_Rides_Reason as
select Booking_ID, Incomplete_Rides_Reason
from bookings
where Incomplete_Rides = 'Yes';

# Answer
select * from Incomple_Rides_Reason;