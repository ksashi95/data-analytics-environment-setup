# Data Analytics Environment Setup

A practical, beginner-friendly guide for building a data analytics development environment with **Python, R, Jupyter, VS Code, and SQL Server**.

## Purpose

This repository documents a reproducible setup for learning and working with common data analytics tools. It focuses on installation, configuration, verification, practical notebook workflows, and common troubleshooting steps.

## Stack

| Tool | Purpose |
|---|---|
| Python | Data analysis, automation, scripting |
| R | Statistics, analysis, and visualization |
| Jupyter | Interactive notebook environment |
| VS Code | Main development environment |
| SQL Server | Relational database and SQL practice |
| SQL Server (MSSQL) extension | SQL development inside VS Code |
| IRkernel | Run R notebooks through Jupyter |
| ggplot2 | Data visualization in R |

## Repository Structure

```text
data-analytics-environment-setup/
├── README.md
├── docs/
│   ├── 01-python.md
│   ├── 02-vscode.md
│   ├── 03-jupyter.md
│   ├── 04-r.md
│   ├── 05-r-jupyter.md
│   ├── 06-sql-server.md
│   ├── 07-vscode-sql-server.md
│   ├── 08-troubleshooting.md
│   └── 09-python-data-analysis-packages.md
├── verification/
│   ├── python-check.py
│   ├── r-check.R
│   └── sql-server-check.sql
└── CHANGELOG.md
```

## Recommended Workflow

1. Install Python and R.
2. Install VS Code and the required extensions.
3. Install Jupyter and the Python kernel.
4. Install IRkernel and register R with Jupyter.
5. Create and test Python and R notebooks in VS Code.
6. Install/configure SQL Server.
7. Connect SQL Server to VS Code using the MSSQL extension.
8. Run the verification scripts.
9. Use the documented Python Data Analytics packages for analysis, visualization, Excel, APIs, and database workflows.

## Python Data Analytics Packages

The current Python environment includes a documented Data Analytics stack covering:

- NumPy
- Pandas
- Matplotlib
- Seaborn
- PyGWalker
- Jupyter widgets (`ipywidgets`, `anywidget`, `ipylab`)
- OpenPyXL
- PyArrow
- SQLAlchemy
- DuckDB
- Requests / HTTPX
- BeautifulSoup4

See **[Python Data Analysis Packages](docs/09-python-data-analysis-packages.md)** for installed versions, purposes, the Jupyter environment packages, and the recommended learning order.

## Important Security Note

Do not commit personal machine information, passwords, API keys, connection strings, database credentials, or private datasets. Paths and machine-specific values in this documentation use generic placeholders such as `<USERNAME>`, `<COMPUTER-NAME>`, and `<PATH>`.

## Status

The setup documented here is intended as a practical reference rather than a universal installation script. Software versions can change, so verify current official documentation when installing a new environment.

## License

This project is licensed under the MIT License.