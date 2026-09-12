# Basic verification for the R environment

cat("R environment is working\n")
cat("R version:", R.version.string, "\n")

x <- c(10, 20, 30, 40, 50)
cat("Mean:", mean(x), "\n")

plot(cars)