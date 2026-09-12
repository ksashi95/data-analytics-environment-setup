# Python Data Analysis Packages

This document records the Python packages currently installed in the Data Analytics environment and identifies the packages that are intentionally relevant to data analysis, visualization, Excel, APIs, and database work.

> **Environment:** Python 3.14.6 (Global)
>
> **Important:** `pip list` contains many packages because JupyterLab, PyGWalker, widgets, and other tools install dependencies automatically. This document focuses on the packages that are useful or directly relevant to the Data Analytics workflow. It is **not** a complete list of every dependency in the Python environment.

## Core Data Analysis

| Package | Installed version | Purpose |
|---|---:|---|
| `numpy` | 2.5.1 | Numerical computing and array operations |
| `pandas` | 3.0.5 | Data manipulation, cleaning, transformation, and analysis |

## Data Visualization

| Package | Installed version | Purpose |
|---|---:|---|
| `matplotlib` | 3.11.1 | Core Python plotting and visualization |
| `seaborn` | 0.13.2 | Statistical and higher-level data visualization |
| `matplotlib-inline` | 0.2.2 | Displays Matplotlib figures inside Jupyter notebooks |

## Interactive Data Exploration

| Package | Installed version | Purpose |
|---|---:|---|
| `pygwalker` | 0.5.0.1 | Interactive, drag-and-drop, Tableau-style data exploration |
| `ipywidgets` | 8.1.9 | Interactive widgets in Jupyter |
| `anywidget` | 0.11.0 | Widget framework used by modern interactive notebook tools |
| `ipylab` | 1.0.0 | Interactive JupyterLab functionality used by notebook widgets |

## Excel and File-Based Analysis

| Package | Installed version | Purpose |
|---|---:|---|
| `openpyxl` | 3.1.5 | Reading and writing `.xlsx` Excel workbooks |
| `pyarrow` | 25.0.1 | Apache Arrow and columnar data formats such as Parquet |

## SQL and Database Analysis

| Package | Installed version | Purpose |
|---|---:|---|
| `SQLAlchemy` | 2.0.52 | Python database connectivity and SQL toolkit |
| `duckdb` | 1.5.5 | Analytical SQL engine that can query local data/files |
| `sqlglot` | 30.17.0 | SQL parsing, translation, and manipulation |

## APIs and Online Data

| Package | Installed version | Purpose |
|---|---:|---|
| `requests` | 2.34.2 | Making HTTP requests and working with APIs |
| `httpx` | 0.28.1 | Modern HTTP client for synchronous and asynchronous requests |
| `beautifulsoup4` | 4.15.0 | Parsing and extracting information from HTML |

## Jupyter Environment Packages

These packages support the notebook environment rather than being primary Data Analytics libraries.

| Package | Installed version | Purpose |
|---|---:|---|
| `jupyterlab` | 4.6.2 | Jupyter notebook development environment |
| `ipython` | 9.15.0 | Interactive Python shell and notebook execution layer |
| `ipykernel` | 7.3.0 | Python kernel for Jupyter |
| `jupyter_client` | 8.9.1 | Communication between Jupyter clients and kernels |
| `jupyter_server` | 2.20.0 | Server infrastructure for Jupyter |
| `nbformat` | 5.10.4 | Reading and writing Jupyter notebook files |
| `nbconvert` | 7.17.1 | Converting/exporting Jupyter notebooks |
| `jupyterlab_widgets` | 3.0.17 | JupyterLab support for widgets |
| `widgetsnbextension` | 4.0.16 | Widget support for classic Jupyter notebook components |

## R and Jupyter Integration

The Python `pip list` also shows packages associated with the R/Jupyter setup:

| Package | Installed version | Purpose |
|---|---:|---|
| `radian` | 0.6.16 | Enhanced R console |
| `rchitect` | 0.4.10 | Python/R integration component used by R tooling |

The main R packages are installed through R's package manager rather than `pip`. For example, `IRkernel` and `ggplot2` are R packages and therefore do not appear in the Python `pip list`.

## AI/Jupyter Packages

The environment also contains Jupyter AI components, including:

- `jupyter_ai` 3.1.3
- `jupyter_ai_acp_client` 0.2.1
- `jupyter_ai_chat_commands` 0.0.4
- `jupyter_ai_persona_manager` 0.1.3
- `jupyter_ai_router` 0.0.7
- `jupyter_ai_tools` 0.6.1

These are part of the Jupyter AI environment and are **not required for learning core Python Data Analytics**.

## Recommended Learning Order

For a beginner Data Analyst workflow, learn the packages in this order:

1. **NumPy** — understand arrays and basic numerical operations.
2. **Pandas** — learn to load, inspect, clean, transform, group, and analyze data.
3. **Matplotlib** — learn the fundamentals of programmatic visualization.
4. **Seaborn** — create statistical and polished analytical visuals.
5. **Data Wrangler** — use the VS Code visual interface when quick inspection or cleaning is useful; continue learning the equivalent Pandas code.
6. **PyGWalker** — explore data interactively and discover patterns through drag-and-drop analysis.
7. **OpenPyXL** — work with Excel files programmatically.
8. **Requests / HTTPX** — retrieve data from APIs.
9. **SQLAlchemy / DuckDB** — connect Python analysis with databases and analytical SQL.
10. **PyArrow** — work with Parquet and columnar data as needed.

## Current Core Stack

The current intentional Python Data Analytics stack can be summarized as:

```text
NumPy
  ↓
Pandas
  ↓
Matplotlib + Seaborn
  ↓
Data Wrangler + PyGWalker
  ↓
Excel / APIs / SQL / Parquet
```

## Verification

To see the complete installed environment:

```python
%pip list
```

To check the main Data Analytics packages only:

```python
%pip list | findstr "numpy pandas matplotlib seaborn pygwalker ipywidgets anywidget ipylab openpyxl pyarrow duckdb SQLAlchemy sqlglot requests httpx beautifulsoup4"
```

## Maintenance Note

Package versions are a snapshot of the current environment. They may change as packages are upgraded. Before upgrading packages, verify compatibility with Python 3.14.6 and the Jupyter/PyGWalker workflow.

**Last reviewed:** 2026-09-12
