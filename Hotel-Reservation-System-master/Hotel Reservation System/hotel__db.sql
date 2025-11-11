-- 1. Create the database
-- This command creates the database 'hotel_db' if it doesn't already exist.
CREATE DATABASE IF NOT EXISTS hotel_db;

-- 2. Use the new database
-- This command tells MySQL to use 'hotel_db' for all
-- the following commands.
USE hotel_db;

-- 3. Create the 'reservations' table
-- This creates the table that your Java code reads from and writes to.
CREATE TABLE IF NOT EXISTS reservations (
    -- 'reservation_id' is the primary key. It's an integer that
    -- automatically increments (1, 2, 3...) for each new reservation.
    reservation_id INT PRIMARY KEY AUTO_INCREMENT,
    
    -- 'guest_name' is a text string (VARCHAR) that cannot be empty (NOT NULL).
    guest_name VARCHAR(100) NOT NULL,
    
    -- 'room_number' is an integer and cannot be empty (NOT NULL).
    room_number INT NOT NULL,
    
    -- 'contact_number' is a text string, as phone numbers
    -- can have characters like '+' or '-'.
    contact_number VARCHAR(20) NOT NULL,
    
    -- 'reservation_date' is a timestamp.
    -- 'DEFAULT CURRENT_TIMESTAMP' means MySQL will automatically
    -- set this to the current date and time when a new row is inserted.
    -- This is why your Java 'INSERT' doesn't need to provide it.
    reservation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 4. (Optional) Add some sample data to test with
-- You can run this to have some data in your table right away.
INSERT INTO reservations (guest_name, room_number, contact_number) 
VALUES ('John Doe', 101, '555-1234');

INSERT INTO reservations (guest_name, room_number, contact_number) 
VALUES ('Jane Smith', 102, '555-5678');


-- 5. (Optional) Check your new table
-- This will show you the data you just inserted.
SELECT * FROM reservations;