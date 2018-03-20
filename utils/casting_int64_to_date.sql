-- Description: Cast INT64 to date or timestamp
-- Usage: Change schema with your own schema name
-- Output:
-- ------------------
-- table_id | creation_time | ts | dt
-- ------------------
-- table_id	table name
-- creation_time	date in INT64 format
-- ts	int64 converted into timestamp
-- dt	int64 converted into date
-- 
SELECT
	table_id,
	creation_time,
	TIMESTAMP_MICROS(CAST(creation_time AS INT64)) AS ts,
	DATE(TIMESTAMP_MICROS(CAST(creation_time AS INT64))) AS dt
FROM
  schema.__TABLES__;
