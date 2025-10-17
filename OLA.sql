Create Database ola;
use ola;
#1. Retrieve all successful bookings:
create view Successfull_Bookings As
select * from bookings
where booking_status = 'success';
select * from Successfull_Bookings;


#2. Find the average ride distance for each vehicle type:
Create View ride_distance_for_each_vehicle As
select Vehicle_type, avg(Ride_distance)
as avg_distance from bookings
group by vehicle_type;


#3. Get the total number of cancelled rides by customers:
Create View canceled_by_customer As
select count(*) from bookings
where Booking_status="canceled by customer";

#List the top 5 customers who booked the highest number of rides:
create view top_5_customer AS
SELECT Customer_ID, COUNT(Booking_ID) as total_rides
FROM bookings
GROUP BY Customer_ID ORDER BY total_rides DESC LIMIT 5;

#Get the number of rides cancelled by drivers due to personal and car-related issues:
create view  Canceled_Rides_by_Driver As
select count(*) from bookings
where Canceled_Rides_by_Driver = "personal & car related issue";

#Find the maximum and minimum driver ratings for Prime Sedan bookings:
create view max_min_driver_rating As
select max(Driver_Ratings) as max_ratings , min(Driver_Ratings) as min_rating
from bookings where vehicle_type ='Prime Sedan';


#Retrieve all rides where payment was made using UPI:
create view payment_method As
select * from bookings 
where payment_method='Upi';


#8. Find the average customer rating per vehicle type:
Create View AVG_Cust_Rating As
SELECT Vehicle_Type, AVG(Customer_Rating) as avg_customer_rating
FROM bookings
GROUP BY Vehicle_Type;

#9. Calculate the total booking value of rides completed successfully:
es completed successfully:
Create View total_successful_ride_value As
SELECT SUM(Booking_Value) as total_successful_ride_value
FROM bookings
WHERE Booking_Status = 'Success';

#10. List all incomplete rides along with the reason:
Create View Incomplete_Rides_Reason As
select booking_id , Incomplete_Rides_Reason
from bookings
where incomplete_rides = 'yes';


