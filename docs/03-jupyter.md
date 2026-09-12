# Jupyter Setup

## Goal

Set up Jupyter so Python and R can run as notebook kernels inside VS Code.

## Install Jupyter

From Command Prompt or PowerShell:

```cmd
python -m pip install jupyterlab
```

Verify:

```cmd
jupyter --version
```

## Python Kernel

The Python environment normally provides an `ipykernel` package. Verify available kernels with:

```cmd
jupyter kernelspec list
```

A Python kernel should appear, commonly as `python3`.

## VS Code Notebook Test

1. Create a file ending in `.ipynb`.
2. Open it in VS Code.
3. Select the Python kernel.
4. Run:

```python
print("Hello from Python!")
```

## Note

The `notebook` package is not required when the preferred workflow is to work with `.ipynb` files directly in VS Code using the Jupyter extension.