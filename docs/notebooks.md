# Notebook Conventions

Jupyter notebooks, located in the `notebooks/` directory, are primarily used for **exploration, experimentation, and one-off analyses**. They are excellent for telling a story with data but require discipline to remain manageable.

## Naming and Organization

*   **Prefix with numbers**: Name notebooks with a numerical prefix to indicate the logical order of the analysis (e.g., `01-initial-data-exploration.ipynb`, `02-feature-engineering-tests.ipynb`).
*   **Keep them focused**: Each notebook should have a single, clear purpose. Avoid creating monolithic notebooks that do everything.

## Best Practices

1.  **Refactor Your Code**: Once a piece of code in a notebook becomes stable and reusable (like a data cleaning function), move it into a Python module in the `src/` directory. This makes the logic testable and accessible to other parts of the project.
2.  **Manage Your Outputs**: To keep the repository clean and pull requests easy to review, avoid committing large outputs (like long dataframes or many plots). Use a tool like `nbstripout` to automatically clear cell outputs before you commit your changes.
3.  **Use Markdown for Narrative**: A good notebook tells a story. Use Markdown cells to explain your thought process, describe your steps, and interpret your results.