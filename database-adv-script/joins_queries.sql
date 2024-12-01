
/* A query using an INNER JOIN to retrieve all bookings
and the respective users who made those bookings. */

SELECT Booking.booking_id, USER.user_id 
FROM Booking
INNER JOIN
USER WHERE Booking.user_id = USER.user_id;

 /* A query using a LEFT JOIN to retrieve all properties and their reviews,
including properties that have no reviews. */

SELECT Property.name, Review.rating, Review.comment
FROM Property
LEFT JOIN
Review
ON Property.property_id = Review.property_id;

 /* A query using a FULL OUTER JOIN to retrieve all users 
 and all bookings, even if the user has no booking or a booking is not linked to a user. */

 SELECT CONCAT(USER.first_name, ' ', USER.last_name ) AS Full_Name, 
 Booking.booking_id, Booking.status
 FROM USER
 LEFT JOIN
 Booking
 ON USER.user_id = Booking.user_id

 UNION

 SELECT CONCAT(USER.first_name, ' ', USER.last_name ) AS Full_Name, 
 Booking.booking_id, Booking.status
 FROM USER
 RIGHT JOIN
 Booking
 ON USER.user_id = Booking.user_id;