# PROJECT NAME

Template repo to serve as a standard structure to follow for DA git projects

## Initial File Structure

```
├── config                   <- Config files 
│
├── data                     <- All the data
│
├── docs                     <- MD files for documentation
│
├── models                   <- Trained models
│
├── reports                  <- Visual exports (Tableau, Images etc.)
│
├── src                      <- Production ready code
│
├── tests                    <- Test cases, unit testing
│  
├── .gitignore               <- Files that to be ignored, all are ignored by default
│
├── pyproject.toml         <- Essential python packages used in the project
│  
└── README.md                <- The top-level README for developers using this project.
```

## Contacts
* Author: Yago de Carvalho
* Team: DiANA Data analysts

## Getting started

Run the setup shell file to install uv and requirements (from pyproject.toml file):

```bash
./setup.sh
```

This will also install the common package diana_utils, that can then be used for development.

## Documentation (MkDocs)

Editing and Serving This Documentation Site

The goal is to have a per project documentation with at least a clear description of data, transformations and outputs (see the current template for reference).

The main documentation is built with MkDocs. You can edit it locally and preview your changes in real-time.

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

The server will automatically reload the website in your browser whenever you save a change to a `.md` file or to the `mkdocs.yml` configuration file. To stop the server, press `Ctrl+C` in your terminal.
