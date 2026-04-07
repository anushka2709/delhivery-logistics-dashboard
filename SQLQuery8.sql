SELECT AVG(actual_time) AS avg_delivery_time
FROM fact_delivery_trip;

SELECT AVG(osrm_time) AS avg_expected_time
FROM fact_delivery_trip;

SELECT 
AVG(actual_time - osrm_time) AS avg_delay
FROM fact_delivery_trip;

SELECT 
AVG(actual_distance / osrm_distance) AS efficiency_factor
FROM fact_delivery_trip;

SELECT 
dc.center_name,
COUNT(*) AS total_trips
FROM fact_delivery_trip f
JOIN dim_centers dc
ON f.destination_center_id = dc.center_id
GROUP BY dc.center_name
ORDER BY total_trips DESC;