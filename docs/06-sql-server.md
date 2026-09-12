# SQL Server Setup

## Goal

Install SQL Server for relational database development and analytics practice.

## Core Components

- **SQL Server Database Engine** — stores and processes relational data.
- **SSMS (SQL Server Management Studio)** — optional graphical administration tool.
- **SQL Server (MSSQL) extension** — allows SQL development from VS Code.

## Verify the Server

After installation and configuration, connect to the SQL Server instance using Windows authentication or another approved authentication method.

Run:

```sql
SELECT @@SERVERNAME AS server_name,
       @@VERSION AS sql_server_version;
```

## Database Check

```sql
SELECT name
FROM sys.databases
ORDER BY name;
```

## Bulk Loading CSV Data

A typical CSV import can use `BULK INSERT`:

```sql
BULK INSERT bronze.crm_customers
FROM '<CSV-PATH>\customers.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDQUOTE = '"',
    TABLOCK
);
```

Replace `<CSV-PATH>` with the actual path on the SQL Server machine/environment.

## Important

`BULK INSERT` expects a text/CSV file, not an Excel `.xlsx` workbook. If the source data is in Excel, export it to CSV first or use an appropriate ETL/import method.

## Repeatable Loads

For recurring data loads, consider wrapping validated loading logic in a stored procedure. Design the procedure so that rerunning it does not unintentionally delete historical data.