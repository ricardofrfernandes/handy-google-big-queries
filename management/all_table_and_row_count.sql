-- Description: Lists all tables and estimated row count
-- Usage: Change schema with your own schema name
-- Output:
-- ------------------
-- table_id | row_count
-- ------------------
-- table_id	table name
-- row_count	table estimated row count
-- 
SELECT
  table_id,
  row_count
FROM
  schema.__TABLES__;
