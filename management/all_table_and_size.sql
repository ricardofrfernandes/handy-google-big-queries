-- Description: Lists all tables and size in Gb
-- Usage: Change schema with your own schema name
-- Output:
-- table_id | size_gb
SELECT
  table_id,
  ROUND(SUM(size_bytes)/POW(10,9),2) AS size_gb
FROM
  schema.__TABLES__
GROUP BY
  table_id
ORDER BY
  size_gb;
