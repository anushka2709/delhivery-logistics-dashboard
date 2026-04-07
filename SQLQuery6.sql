CREATE TABLE fact_delivery_trip (
fact_id INT IDENTITY(1,1) PRIMARY KEY,
trip_uuid VARCHAR(50),
date_id INT,
source_center_id INT,
destination_center_id INT,
actual_time FLOAT,
osrm_time FLOAT,
actual_distance FLOAT,
osrm_distance FLOAT
);