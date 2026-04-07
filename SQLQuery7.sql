IF OBJECT_ID('fact_delivery_trip','U') IS NOT NULL
DROP TABLE fact_delivery_trip;

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

INSERT INTO fact_delivery_trip

SELECT
s.trip_uuid,
d.date_id,
sc.center_id,
dc.center_id,
s.actual_time,
s.osrm_time,
s.actual_distance_to_destination,
s.osrm_distance

FROM stg_delhivery s

JOIN dim_date d
ON CAST(s.trip_creation_time AS DATE) = d.full_date

JOIN dim_centers sc
ON s.source_center = sc.center_name

JOIN dim_centers dc
ON s.destination_center = dc.center_name;

SELECT COUNT(*) FROM fact_delivery_trip;