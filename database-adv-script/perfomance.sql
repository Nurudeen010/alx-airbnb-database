-- An initial query that retrieves all bookings along with the user details, property details, and payment details and save it on perfomance.sql

SELECT Booking.booking_id, Property.name, CONCAT(USER.first_name, ' ', USER.last_name),
 Property.description, Payment.amount, Payment.payment_method
FROM Booking
LEFT JOIN USER ON Booking.user_id = USER.user_id 
LEFT JOIN Property ON Property.property_id = Booking.property_id
LEFT JOIN Payment ON payment.booking_id = Booking.booking_id
WHERE Booking.booking_id IS NOT NULL
AND Payment.amount > 0;

-- USING EXPLAIN

EXPLAIN SELECT Booking.booking_id, Property.name, CONCAT(USER.first_name, ' ', USER.last_name),
 Property.description, Payment.amount, Payment.payment_method
FROM Booking
LEFT JOIN USER ON Booking.user_id = USER.user_id 
LEFT JOIN Property ON Property.property_id = Booking.property_id
LEFT JOIN Payment ON payment.booking_id = Booking.booking_id;

