-- Create the database
CREATE DATABASE IF NOT EXISTS TrafficData;
USE TrafficData;

-- Create the Customer table
CREATE TABLE IF NOT EXISTS customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id VARCHAR(255) UNIQUE NOT NULL,
    house_number INT,
    postcode VARCHAR(255),
    customer_status VARCHAR(255)
);

-- Create the Traffic table with a foreign key relationship to customers
CREATE TABLE IF NOT EXISTS traffic (
    id INT AUTO_INCREMENT PRIMARY KEY,
    date DATETIME,
    customer_id VARCHAR(255),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Create the Distribution Centres table
CREATE TABLE IF NOT EXISTS distribution_centres (
    id INT AUTO_INCREMENT PRIMARY KEY,
    centre_name VARCHAR(255),
    address TEXT
);

-- Insert data into the customers table
INSERT INTO customers (customer_id, house_number, postcode, customer_status) VALUES
('zvPv1xxX', 181, 'NE1 3DW', 'Gold'),
('Tqgax9Fk', 171, 'NE10 0UZ', 'Silver'),
('vSwgoI3o', 75, 'NE10 9AH', 'Platinum'),
('SQx7taUk', 134, 'NE12 7AF', 'Platinum'),
('dUSx3ZRx', 171, 'NE13 7LH', 'Platinum');

-- Insert data into the traffic table
INSERT INTO traffic (date, customer_id) VALUES
('2024-07-01 00:00:00', 'zvPv1xxX'),
('2024-07-01 00:00:00', 'zvPv1xxX'),
('2024-07-01 00:00:00', 'zvPv1xxX'),
('2024-07-01 00:00:00', 'zvPv1xxX'),
('2024-07-01 00:00:00', 'cI4kDLJs');

-- Insert data into the distribution_centres table
INSERT INTO distribution_centres (centre_name, address) VALUES
('Bristol', 'The Crescent, Stoke Gifford, Bristol BS16 1EJ'),
('London', 'Main Dr, East Ln, Wembley HA9 7NA'),
('Leeds', 'Olympia Trade Park, Gerrard Lane, Leeds, West Yorkshire'),
('Northallerton', 'Standard Way Industrial Estate, Business Park, Northallerton'),
('Cardiff', 'Southpoint Industrial Estate, Foreshore Rd, Cardiff CF10 4SP');
