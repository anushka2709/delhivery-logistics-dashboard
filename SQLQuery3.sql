CREATE TABLE dim_date (
date_id INT IDENTITY(1,1) PRIMARY KEY,
full_date DATE,
year INT,
month INT,
day INT,
weekday VARCHAR(20)
);

INSERT INTO dim_date (full_date, year, month, day, weekday)

SELECT DISTINCT
CAST(trip_creation_time AS DATE),
YEAR(trip_creation_time),
MONTH(trip_creation_time),
DAY(trip_creation_time),
DATENAME(WEEKDAY, trip_creation_time)

FROM stg_delhivery;

SELECT TOP 10 * FROM dim_date;