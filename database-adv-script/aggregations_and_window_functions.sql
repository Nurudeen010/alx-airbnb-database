 -- A query to find the total number of bookings made by each user, using the COUNT function and GROUP BY clause.

SELECT CONCAT(USER.first_name, ' ', USER.last_name) AS Full_Name, 
COUNT(Booking.booking_id) AS Total_bookings
FROM USER
INNER JOIN
Booking
ON Booking.user_id = USER.user_id
GROUP BY USER.user_id;

-- A window function (RANK) to rank properties based on the total number of bookings they have received.

SELECT Property.name, COUNT(Booking.booking_id),
RANK() OVER (ORDER BY COUNT(Booking.booking_id) DESC) AS rank;
FROM Property
INNER JOIN Booking
ON Booking.property_id = Property.property_id
GROUP BY Property.property_id, Property.name
ORDER BY rank;


-- A window function (ROW_NUMBER) to rank properties based on the total number of bookings they have received.
SELECT Property.name, COUNT(Booking.booking_id),
ROW_NUMBER() OVER (ORDER BY COUNT(Booking.booking_id) DESC) AS row_numnber;
FROM Property
INNER JOIN Booking
ON Booking.property_id = Property.property_id
GROUP BY Property.property_id, Property.name
ORDER BY row_numnber;