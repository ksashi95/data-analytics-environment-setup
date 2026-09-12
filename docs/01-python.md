# Python Setup

## Goal

Install Python and verify that it can be used from the command line and VS Code.

## Installation

Install a current Python 3 release from the official Python website.

During Windows installation, enable the option to add Python to PATH when appropriate.

## Verify Python

Open Command Prompt or PowerShell:

```cmd
python --version
pip --version
```

Example expected output:

```text
Python 3.x.x
pip xx.x.x
```

The exact version is not important for this guide; use a supported version suitable for your project.

## VS Code Python Interpreter

After installing the Python extension in VS Code:

1. Open the Command Palette.
2. Choose **Python: Select Interpreter**.
3. Select the intended Python installation.
4. For a global installation, it may appear with a label similar to `Python 3.x — Global`.

## Test Script

Create `verification/python-check.py` or run:

```python
print("Python environment is working!")
```

## Best Practice

For larger projects, prefer a project-specific virtual environment instead of installing every package globally.