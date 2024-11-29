CREATE TABLE User (
    user_id INT Primary Key,
    first_name VARCHAR (20),
    last_name VARCHAR (20),
    email VARCHAR (30) UNIQUE,
    password_hash VARCHAR(30),
    phone_number VARCHAR (15),
    role ENUM ('guest', 'host', 'admin'),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Property(
    property_id INT Primary Key,
    host_id INT,
    name VARCHAR (20),
    description TEXT,
    location VARCHAR (30),
    pricepernight DECIMAL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY(host_id) REFERENCES User(user_id) ON DELETE SET NULL
);

CREATE TABLE Booking (
    booking_id INT Primary Key,
    property_id INT,
    user_id INT,
    start_date DATE,
    end_date DATE,
    total_price DECIMAL,
    status ENUM ('pending', 'confirmed', 'canceled'),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Foreign Key(property_id) references Property(property_id),
    Foreign Key(user_id) references User(user_id)
);

CREATE TABLE Payment(
    payment_id INT Primary Key,
    booking_id INT,
    amount DECIMAL,
    payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    payment_method ENUM ('credit_card', 'paypal', 'stripe'),
    Foreign Key(booking_id) references Booking(booking_id)

);

CREATE TABLE Review(
    review_id: Primary Key,
    property_id INT,
    user_id INT,
    rating INTEGER CHECK rating >= 1 AND rating <= 5,
    comment TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Foreign Key(property_id) references Property(property_id),
    Foreign Key(user_id) references User(user_id)
);

CREATE TABLE Messages(
    message_id INT Primary Key,
    sender_id INT,
    recipient_id INT,
    message_body TEXT,
    sent_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Foreign Key(sender_id) references User(user_id),
    Foreign Key(recipient_id) references User(user_id)
);
