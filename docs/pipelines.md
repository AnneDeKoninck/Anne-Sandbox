# Pipelines

The project's workflow is structured as a pipeline of sequential scripts that transform raw data into final insights. Each major step is handled by a dedicated Python script.

### Pipeline Stages

1.  **Data Ingestion**
    *   **Script**: `src/data/make_dataset.py`
    *   **Purpose**: Fetches raw data from its source (e.g., a database, API, or file store) and saves it into the `data/raw/` directory. This step should be idempotent, meaning it produces the same output every time it is run.

2.  **Feature Engineering**
    *   **Script**: `src/features/build_features.py`
    *   **Purpose**: Takes the raw data from `data/raw/`, cleans it, combines it, and engineers new features. The final, analysis-ready dataset is saved to `data/processed/`.

3.  **Reporting**
    *   **Script**: `src/viz/generate_report.py`
    *   **Purpose**: Runs the final analysis on the processed data to produce outputs like figures, summary tables, or dashboard artifacts, which are saved in the `reports/` directory.

### Configuration

All pipeline scripts should be parameterized using configuration files located in the `config/` directory. **Never hardcode paths, parameters, or secrets** directly in scripts or notebooks. The scripts should load these configurations at runtime.