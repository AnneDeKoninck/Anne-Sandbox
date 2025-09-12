# Development Guides

This section contains conventions and best practices for SQL, notebooks, and testing to ensure consistency across the project.

## SQL Guidelines

All project-related SQL scripts are stored in the `sql/` directory.

*   **`sql/staging/`**: Contains scripts that perform initial cleaning and transformation of raw data into a structured staging layer.
*   **`sql/marts/`**: Contains scripts that build final, business-facing data models (e.g., dimension or fact tables) from the staging layer.
*   **`sql/tests/`**: Includes data quality queries, such as checking for primary key uniqueness, nulls in critical columns, or referential integrity.

## Notebook Conventions

Notebooks in the `notebooks/` directory are for exploration, experimentation, and one-off analyses.

1.  **Naming**: Prefix notebooks with a number to indicate order (e.g., `01-initial-eda.ipynb`).
2.  **Refactoring**: Once code is stable, move it into a Python module in `src/` to make it reusable and testable.
3.  **Version Control**: Avoid committing large outputs. Use a tool like `nbstripout` to automatically clear cell outputs before committing.

## Testing & Quality

Testing ensures the reliability of our data and analysis.

*   **Code Tests (`tests/`)**: Unit tests for Python functions in `src/` should be placed here. We use `pytest` to verify that our data processing and analysis functions work as expected.
*   **Data Tests (`sql/tests/`)**: SQL queries that validate the integrity of our data assets. These act as data contracts to prevent silent failures.