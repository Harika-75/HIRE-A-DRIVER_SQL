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
 

CREATE TABLE bookings(
booking_id INT PRIMARY KEY AUTO_INCREMENT,
id int,
source VARCHAR(500) NOT NULL,
destination VARCHAR(500) NOT NULL,
 booking_date DATE NOT NULL,
 booking_time TIME NOT NULL,
status ENUM('PENDING','CONFIRMED','COMPLETED','CANCELLED') default 'PENDING',
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP 
               ON UPDATE CURRENT_TIMESTAMP,
FOREIGN KEY (id) REFERENCES users(id)
);

SELECT*FROM bookings;

INSERT INTO bookings (id, source, destination, booking_date, booking_time, status)
VALUES
(1, 'Visakhapatnam', 'Hyderabad', '2026-03-10', '10:30:00', 'PENDING');

INSERT INTO bookings (id, source, destination, booking_date, booking_time, status)
VALUES
(1, 'Visakhapatnam', 'Hyderabad', '2026-03-10', '10:30:00', 'CONFIRMED');
 
INSERT INTO bookings (id, source, destination, booking_date, booking_time, status)
VALUES
(2, 'Visakhapatnam', 'Hyderabad',  '2026-03-03', '09:00:00', 'PENDING'),
(2, 'Visakhapatnam', 'Bangalore',  '2026-03-11', '10:30:00', 'CONFIRMED'),
(3, 'Chennai',       'Hyderabad',  '2026-03-01', '11:15:00', 'PENDING'),
(3, 'Chennai',       'Bangalore',  '2026-02-13', '12:00:00', 'COMPLETED'),
(4, 'Hyderabad',     'Pune',       '2026-02-14', '08:45:00', 'PENDING'),
(4, 'Hyderabad',     'Mumbai',     '2026-03-15', '14:30:00', 'CONFIRMED');
-- (5, 'Bangalore',     'Chennai',    '2026-03-16', '16:00:00', 'CANCELLED'), (5, 'Bangalore',     'Visakhapatnam','2026-03-17','18:20:00', 'PENDING'),(6, 'Pune',          'Mumbai',     '2026-02-18', '07:30:00', 'COMPLETED'),
--(6,'Mumbai',        'Delhi',      '2026-03-19', '21:00:00', 'CONFIRMED');