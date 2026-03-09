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
 



