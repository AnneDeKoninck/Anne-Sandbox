pip install uv  # Ensure uv is installed
export UV_VENV_CLEAR=1  # Clear existing virtual environment if it exists
uv venv  # Create a virtual environment using uv
source .venv/Scripts/activate  # Activate the virtual environment in WINDOWS environment
uv pip install -e .[all]  # Install the package in editable mode with development dependencies