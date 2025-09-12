# Repository Structure

The repository is organized to separate data, source code, notebooks, and outputs. This ensures clarity and reproducibility, following standard data science conventions.

```
├── README.md # High-level project overview and entry point
├── requirements.txt # Project dependencies for reproducibility
├── config/ # Configuration files (paths, parameters, secrets, SQL queries for now)

├── data/
│ ├── raw/ # Original, immutable raw data snapshots
│ ├── processed/ # Final, analysis-ready datasets
│ └── external/ # Data from third-party sources

├── docs/ # Documentation files (this site)
├── models/ # Serialized models (pickles) or statistical outputs (e.g., forecasts)
├── notebooks/ # Exploratory Data Analysis (EDA) and experiments

├── reports/
│ ├── figures/ # Generated plots and visualizations
│ └── dashboards/ # Dashboard artifacts or compiled builds

├── sql/ eventually move SQL queries here

├── src/
│ ├── init.py # Makes src a Python module
│ ├── etl/ # example, here we'd have ETL steps
│ ├── pipelines/ # Orchestration of different steps
│ ├── utils/ # Auxiliary functions (eg.: redshift connection)
│ └── viz/ # Scripts for building charts and reports
└── tests/ # Unit tests for Python source code
```