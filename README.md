# Python Project Template with Poetry, Nix, and Pyright

This is a template for Python projects using Poetry for dependency management, Nix for reproducible development environments, and Pyright for static type checking.

## Prerequisites

- [Nix](https://nixos.org/download.html) with flakes enabled
- [Poetry](https://python-poetry.org/docs/#installation) (optional, as it's provided by the Nix shell)

## Getting Started

1. Click the "Use this template" button on GitHub to create a new repository from this template.

2. Clone your new repository:
   ```bash
   git clone https://github.com/your-username/your-repo-name.git
   cd your-repo-name
   ```

3. Enter the Nix development shell:
   ```bash
   nix develop
   ```

4. Install the project dependencies:
   ```bash
   poetry install
   ```

5. Run the hello world script:
   ```bash
   poetry run python main.py
   ```

## Adding Dependencies

To add new dependencies to your project:
  ```bash
  poetry add package-name
  ```

## Using Pyright

Pyright is configured to use the local `.venv` directory. Most IDEs with Pyright support should automatically use this configuration.

## Customizing the Project

1. Update the `pyproject.toml` file with your project details.
2. Modify `main.py` to start building your project.
3. Add your code files and update dependencies as needed.

Happy coding!
