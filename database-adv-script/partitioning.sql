/* Assume the Booking table is large and query performance is slow. 
Implement partitioning on the Booking table based on the start_date column.
Save the query in a file partitioning.sql */

CREATE TABLE Booking (
    booking_id INT NOT NULL,
    user_id INT NOT NULL,
    property_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    PRIMARY KEY (booking_id, start_date)
)
PARTITION BY RANGE (YEAR(start_date)) (
    PARTITION p2022 VALUES LESS THAN (2023),
    PARTITION p2023 VALUES LESS THAN (2024),
    PARTITION p2024 VALUES LESS THAN (2025),
    PARTITION pMax VALUES LESS THAN MAXVALUE
);

SELECT Booking.id 
from Booking
WHERE start_date BETWEEN '2023-10-23' AND '2024-12-08';