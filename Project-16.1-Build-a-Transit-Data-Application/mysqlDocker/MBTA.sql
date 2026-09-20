-- SQLBook: Code
CREATE DATABASE IF NOT EXISTS MBTAdb;

USE MBTAdb;

DROP TABLE IF EXISTS mbta_buses;

CREATE TABLE mbta_buses (

    record_num INT AUTO_INCREMENT PRIMARY KEY,

    id VARCHAR(255) NOT NULL,
    latitude DECIMAL(11,8) NOT NULL,
    longitude DECIMAL(11,8) NOT NULL,

    bearing INT,
    current_status VARCHAR(100),
    current_stop_sequence INT,
    direction_id INT,
    label VARCHAR(50),
    occupancy_status VARCHAR(100),
    revenue VARCHAR(50),
    speed DECIMAL(10,2) NULL,
    updated_at DATETIME

);
