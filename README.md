# Python Project Template with uv, Nix, with Pyright support

This is a template for Python projects using uv for dependency management, Nix for reproducible development environments. It create a local vent that Pyright will pickup automatically.

## Prerequisites

- [Nix](https://nixos.org/download.html) with flakes enabled
- [uv](https://github.com/astral-sh/uv) (provided by the Nix shell)

## Getting Started

1. Click the "Use this template" button on GitHub to create a new repository from this template.

2. Clone your new repository:
   ```bash
   git clone https://github.com/your-username/your-repo-name.git
   cd your-repo-name
   ```

3. (Optional) Enter the Nix development shell:
   ```bash
   nix develop
   ```

4. (Optional) Install project dependencies:
   ```bash
   uv pip sync  # to use the lockfile
   # or
   uv pip sync requirements.txt  # for legacy dependencies
   ```

5. Run the hello world script:
   ```bash
   # Will create .venv/, install dependencies, and generate lockfile if last step was skipped
   uv run main.py 
   ```

## Adding Dependencies

To add new dependencies to your project:
  ```bash
  uv add package-name
  ```

## Using Pyright

Pyright is configured to use the local `.venv` directory. Most IDEs with Pyright support should automatically use this configuration.

## Customizing the Project

1. Update the `pyproject.toml` file with your project details.
2. Modify `main.py` to start building your project.
3. Add your code files and update dependencies as needed.

