# Troubleshooting

## Python Is Not Found

Check:

```cmd
python --version
```

If Windows cannot find Python, verify that Python is installed and that the intended interpreter is selected in VS Code.

## Wrong Python Kernel

In a notebook, use **Select Kernel** and choose the intended Python environment.

## R Kernel Does Not Appear

Run:

```cmd
jupyter kernelspec list
```

If `ir` is missing, open R and run:

```r
IRkernel::installspec(user = TRUE)
```

Then restart VS Code/Jupyter and check again.

## R Package Installation Problems

Try installing the package from the R console:

```r
install.packages("<PACKAGE-NAME>")
```

Make sure the R version and package dependencies are compatible.

## No Plot Appears in an R Notebook

First test a simple base R plot:

```r
plot(cars)
```

If that works, test `ggplot2` separately:

```r
library(ggplot2)
ggplot(cars, aes(speed, dist)) + geom_point()
```

For Jupyter-based R workflows, avoid adding VS Code-specific environment variables unless a documented tool actually requires them.

## SQL Server Connection Fails

Check:

1. SQL Server service is running.
2. The server/instance name is correct.
3. Authentication mode matches the server configuration.
4. The selected database exists.
5. The VS Code MSSQL extension is installed and enabled.

## BULK INSERT Conversion Error

If SQL Server reports a conversion or truncation error, check:

- CSV column order
- CSV data types
- Header handling (`FIRSTROW`)
- Text encoding
- Delimiters and quoting
- Destination column sizes
- Unexpected Excel-generated formatting

A common mistake is trying to bulk-load an `.xlsx` file as CSV. Export the workbook to CSV first.

## Data Was Loaded Twice

Do not assume a stored procedure automatically protects against duplicate loads. Decide whether the process should append, replace, merge, or load only new records, then implement that behavior explicitly.

## Personal Machine Details

When documenting troubleshooting examples publicly, replace real usernames, computer names, local paths, credentials, and connection strings with placeholders.