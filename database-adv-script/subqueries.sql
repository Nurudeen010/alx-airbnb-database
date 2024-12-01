-- A query to find all properties where the average rating is greater than 4.0 using a subquery.

SELECT Property.name 
FROM Property
WHERE (
    SELECT AVG(Review.rating)
    FROM Review
    WHERE Property.property_id = Review.property_id
) > 4;


-- A correlated subquery to find users who have made more than 3 bookings.

SELECT CONCAT(USER.first_name, ' ', USER.last_name) AS Full_Name
FROM USER
WHERE (
    SELECT COUNT(Booking.booking_id)
    FROM Booking
    WHERE
    Booking.user_id = USER.user_id
) > 1;