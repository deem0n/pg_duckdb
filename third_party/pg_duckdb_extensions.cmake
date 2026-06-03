duckdb_extension_load(json)
duckdb_extension_load(icu)
duckdb_extension_load(httpfs
    GIT_URL https://github.com/duckdb/duckdb-httpfs
    GIT_TAG 9de3296f40ed03e8e063394887f0d6a46144e847
)
# paleolimbot/duckdb-nanoarrow main HEAD (42e4199, PR #47) targets DuckDB
# 1.5; pinned here because pg_duckdb's vendored DuckDB is now v1.5.3.
duckdb_extension_load(nanoarrow
    GIT_URL https://github.com/paleolimbot/duckdb-nanoarrow
    GIT_TAG 42e4199a67c4cd0789087562a025e87e7130fdc3
)
