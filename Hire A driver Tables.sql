use javaproject;
CREATE TABLE users(id INT PRIMARY KEY  AUTO_INCREMENT,
firstname VARCHAR(100) NOT NULL,
lastname VARCHAR(100) NOT NULL,
username VARCHAR(50)  NOT NULL,
password VARCHAR(50) NOT NULL,
phone_number VARCHAR(20)  UNIQUE NOT NULL,
email VARCHAR(50) NOT NULL,
dob DATE NOT NULL,
user_type ENUM('CUSTOMER','DRIVER') NOT NULL,
gender VARCHAR(10) NOT NULL,
address VARCHAR(100) NOT NULL);

SELECT *FROM users;
ALTER TABLE users
RENAME COLUMN user_type TO role;
CREATE TABLE trips (
    trip_id INT PRIMARY KEY AUTO_INCREMENT,
    source VARCHAR(100) NOT NULL,
    destination VARCHAR(100) NOT NULL,
    duration_hours INT NOT NULL,
    trip_price DECIMAL(10,2) NOT NULL
);

CREATE TABLE bookings (
    booking_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    trip_id INT NOT NULL,
    booking_date DATE NOT NULL,
    booking_status ENUM('PENDING','CONFIRMED','COMPLETED','CANCELLED') DEFAULT 'PENDING',

    FOREIGN KEY (customer_id) REFERENCES users(id),
    FOREIGN KEY (trip_id) REFERENCES trips(trip_id)
);
select *from bookings;
INSERT INTO bookings (customer_id, trip_id, booking_date, booking_status) VALUES (1, 1, '2026-03-01', 'CONFIRMED');
INSERT INTO bookings (customer_id, trip_id, booking_date, booking_status) VALUES (2,2, '2026-03-02', 'PENDING');
INSERT INTO bookings (customer_id, trip_id, booking_date, booking_status) VALUES (3, 3, '2026-03-03', 'COMPLETED');
INSERT INTO bookings (customer_id, trip_id, booking_date, booking_status) VALUES (4, 4, '2026-03-04', 'CANCELLED');
INSERT INTO bookings (customer_id, trip_id, booking_date, booking_status) VALUES (5, 4, '2026-03-05', 'CONFIRMED');

INSERT INTO bookings (customer_id, trip_id, booking_date, booking_status) VALUES (6, 5, '2026-03-06', 'PENDING');
INSERT INTO bookings (customer_id, trip_id, booking_date, booking_status) VALUES (7, 6, '2026-03-07', 'COMPLETED');
INSERT INTO bookings (customer_id, trip_id, booking_date, booking_status) VALUES (8, 7, '2026-03-08', 'CONFIRMED');


INSERT INTO bookings (customer_id, trip_id, booking_date, booking_status) VALUES (1, 11, '2026-03-11', 'COMPLETED');
INSERT INTO bookings (customer_id, trip_id, booking_date, booking_status) VALUES (2, 12, '2026-03-12', 'CONFIRMED');
INSERT INTO bookings (customer_id, trip_id, booking_date, booking_status) VALUES (3, 13, '2026-03-13', 'PENDING');
INSERT INTO bookings (customer_id, trip_id, booking_date, booking_status) VALUES (4, 14, '2026-03-14', 'COMPLETED');
INSERT INTO bookings (customer_id, trip_id, booking_date, booking_status) VALUES (5, 15, '2026-03-15', 'CANCELLED');

INSERT INTO bookings (customer_id, trip_id, booking_date, booking_status) VALUES (6, 10, '2026-03-16', 'CONFIRMED');
INSERT INTO bookings (customer_id, trip_id, booking_date, booking_status) VALUES (7, 7, '2026-03-17', 'PENDING');
INSERT INTO bookings (customer_id, trip_id, booking_date, booking_status) VALUES (8, 8, '2026-03-18', 'COMPLETED');
INSERT INTO bookings (customer_id, trip_id, booking_date, booking_status) VALUES (9, 9, '2026-03-19', 'CONFIRMED');
INSERT INTO bookings (customer_id, trip_id, booking_date, booking_status) VALUES (10, 10, '2026-03-20', 'CANCELLED');
 
INSERT INTO trips (source, destination, duration_hours, trip_price) VALUES ('Hyderabad', 'Bangalore', 8, 1200.00);
INSERT INTO trips (source, destination, duration_hours, trip_price) VALUES ('Chennai', 'Coimbatore', 6, 900.00);
INSERT INTO trips (source, destination, duration_hours, trip_price) VALUES ('Delhi', 'Agra', 4, 700.00);
INSERT INTO trips (source, destination, duration_hours, trip_price) VALUES ('Mumbai', 'Pune', 3, 500.00);
INSERT INTO trips (source, destination, duration_hours, trip_price) VALUES ('Visakhapatnam', 'Vijayawada', 7, 1000.00);

INSERT INTO trips (source, destination, duration_hours, trip_price) VALUES ('Kolkata', 'Bhubaneswar', 6, 850.00);
INSERT INTO trips (source, destination, duration_hours, trip_price) VALUES ('Jaipur', 'Udaipur', 5, 950.00);
INSERT INTO trips (source, destination, duration_hours, trip_price) VALUES ('Ahmedabad', 'Surat', 4, 600.00);
INSERT INTO trips (source, destination, duration_hours, trip_price) VALUES ('Nagpur', 'Indore', 6, 1100.00);
INSERT INTO trips (source, destination, duration_hours, trip_price) VALUES ('Lucknow', 'Kanpur', 2, 300.00);

select *from trips;
select * from bookings;