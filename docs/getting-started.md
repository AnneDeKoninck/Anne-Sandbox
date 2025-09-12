# Getting Started

This guide provides the steps to set up the project environment and run the analytics pipelines.

## 1. Installation

First, clone the repository. Then, install the required Python dependencies into a virtual environment.

Create and activate a virtual environment (recommended)
python -m venv venv
source venv/bin/activate # On Windows use venv\Scripts\activate

Install dependencies
pip install -r requirements.txt


## 2. Running Pipelines

The primary project workflows are run by executing Python scripts from the `src/` directory. The typical execution order is as follows:

*   **Connect to fetch input data - for instance using the connector function:**
    ```
    fetch_data_as_dataframe("query","server") 
    ```

*   **Process data and create features (Illustrative):**
    ```
    python src/features/build_features.py
    ```

*   **Generate final reports and figures (Illustrative):**
    ```
    python src/viz/generate_report.py #Illustrative

## 3. Notebooks

You can also use the exploratory notebooks to re-launch analysis

## 4. Editing and Serving This Documentation Site

This documentation is built with MkDocs. You can edit it locally and preview your changes in real-time.

### How to Edit
To edit the content, simply modify the Markdown (`.md`) files located in the `docs/` directory. The site's navigation and structure are defined in the `mkdocs.yml` file at the root of the repository.

### How to Serve Locally
To see your changes live, run the built-in development server from the project's root directory.

1.  **Install MkDocs:** If you haven't already, install it.
    ```
    pip install mkdocs mkdocs-material
    ```

2.  **Start the server:**
    ```
    mkdocs serve
    ```

3.  **View your site:** Open your web browser and navigate to the URL shown in the terminal, which is usually `http://127.0.0.1:8000`.

The server will automatically reload the website in your browser whenever you save a change to a `.md` file or to the `mkdocs.yml` configuration file.To stop the server, press `Ctrl+C` in your terminal.