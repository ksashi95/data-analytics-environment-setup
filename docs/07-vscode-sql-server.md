# SQL Server in VS Code

## Goal

Run SQL Server queries directly from VS Code using the Microsoft SQL Server (MSSQL) extension.

## Connect

1. Install the **SQL Server (MSSQL)** extension.
2. Open the SQL Server connection panel.
3. Create or select a connection.
4. Choose the SQL Server instance.
5. Use Windows/integrated authentication when that is how the local server is configured.
6. Select a database when needed.

## Test Query

```sql
SELECT DB_NAME() AS current_database;
```

Then:

```sql
SELECT TOP (10) *
FROM sys.tables;
```

## Project Workflow

A useful analytics workflow is:

```text
CSV / source data
      ↓
Bronze tables
      ↓
Silver tables
      ↓
Gold tables
      ↓
SQL analysis / Power BI
```

The exact architecture depends on the project.

## SSMS vs VS Code

**VS Code** is convenient for project-based SQL development and keeping SQL scripts beside documentation and code.

**SSMS** remains useful for database administration, advanced SQL Server management, and features that are more naturally handled through the dedicated management interface.