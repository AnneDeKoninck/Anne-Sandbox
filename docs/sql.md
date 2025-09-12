# SQL Guidelines

All project-related SQL scripts are stored in the `sql/` directory to maintain a clear and organized structure for our data transformation logic.

## Directory Structure

*   **`sql/staging/`**
    Contains scripts that perform initial cleaning and transformation of raw data into a structured staging layer. These are typically the first-level transformations.

*   **`sql/marts/`**
    Contains scripts that build the final, business-facing data models from the staging layer. These often create the dimension or fact tables used for analysis and reporting.

*   **`sql/tests/`**
    Includes data quality and validation queries. These are crucial for ensuring data integrity and can check for things like primary key uniqueness, null values in critical columns, or referential integrity between tables.

## Best Practices

1.  **Commenting**: Add a comment block at the top of each SQL file explaining its purpose, dependencies, and output.
2.  **Formatting**: Use a consistent SQL style for readability.
3.  **Modularity**: Use Common Table Expressions (CTEs) to break down complex logic into logical, readable steps.
4.  **Idempotency**: Ensure that running a script multiple times does not create duplicate data or errors.