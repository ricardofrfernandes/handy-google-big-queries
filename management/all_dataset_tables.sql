-- Description: Lists all tables within one dataset
-- Usage: Change schema with your own schema name
-- Output:
-- -------------------------------------------------
-- project_id|dataset_id|table_id|creation_time|type
-- -------------------------------------------------
-- project_id	Name of the project.
-- dataset_id	Name of the dataset.
-- table_id	Name of the table or view.
-- creation_time	The time at which the table or view was created, in milliseconds since January 1, 1970 UTC.
-- type	An integer representing the table type: a regular table (1) or a view (2).
--
SELECT
  *
FROM
  schema.__TABLES_SUMMARY__
ORDER BY
  table_id asc;
