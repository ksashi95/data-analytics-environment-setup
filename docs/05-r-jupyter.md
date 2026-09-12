# R + Jupyter Setup

## Goal

Run R code inside Jupyter notebooks in VS Code.

## Install IRkernel

Open the R console and run:

```r
install.packages("IRkernel")
```

After installation, register the R kernel with Jupyter:

```r
IRkernel::installspec(user = TRUE)
```

## Verify the Kernel

From Command Prompt or PowerShell:

```cmd
jupyter kernelspec list
```

You should see an R kernel, commonly named `ir`, alongside the Python kernel.

Example:

```text
Available kernels:
  ir        <JUPYTER-DATA>\kernels\ir
  python3   <JUPYTER-DATA>\kernels\python3
```

## Create an R Notebook

1. Open VS Code.
2. Create or open a `.ipynb` file.
3. Select the R kernel.
4. Run:

```r
x <- c(10, 20, 30, 40, 50)
mean(x)
```

Expected result:

```text
30
```

## Plot Test

```r
plot(cars)
```

## ggplot2 Test

```r
library(ggplot2)

ggplot(cars, aes(x = speed, y = dist, color = speed)) +
  geom_point(size = 4)
```

## Common Mistake

`IRkernel::kernels()` is not the correct verification command. Use `jupyter kernelspec list` to check registered Jupyter kernels.