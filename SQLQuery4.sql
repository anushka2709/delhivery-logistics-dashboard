CREATE TABLE dim_centers (
center_id INT IDENTITY(1,1) PRIMARY KEY,
center_name VARCHAR(100)
);

INSERT INTO dim_centers (center_name)

SELECT DISTINCT source_center
FROM stg_delhivery

UNION

SELECT DISTINCT destination_center
FROM stg_delhivery;

SELECT TOP 20 * FROM dim_centers;

SELECT COUNT(*) FROM dim_centers;