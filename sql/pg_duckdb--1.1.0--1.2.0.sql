-- Apache Arrow support via the bundled nanoarrow DuckDB extension.
-- Mirrors the read_parquet pattern: the C body is the duckdb_only_function
-- stub; the planner reroutes any query that mentions these functions to
-- DuckDB, which executes read_arrow natively.

-- read_arrow function for single path (Arrow IPC stream or file, auto-detected)
CREATE FUNCTION @extschema@.read_arrow(path text)
RETURNS SETOF duckdb.row
SET search_path = pg_catalog, pg_temp
AS 'MODULE_PATHNAME', 'duckdb_only_function'
LANGUAGE C;

-- read_arrow function for array of paths
CREATE FUNCTION @extschema@.read_arrow(path text[])
RETURNS SETOF duckdb.row
SET search_path = pg_catalog, pg_temp
AS 'MODULE_PATHNAME', 'duckdb_only_function'
LANGUAGE C;
