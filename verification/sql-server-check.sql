-- Basic SQL Server environment verification

SELECT
    @@SERVERNAME AS server_name,
    @@VERSION AS sql_server_version;

SELECT DB_NAME() AS current_database;

SELECT
    name AS database_name,
    state_desc
FROM sys.databases
ORDER BY name;