# R supports multiple assignment styles
z <- 10        # leftward assignment (idiomatic)
20 -> w        # rightward assignment
result = 5     # equals also assigns

cat("z =", z, "\n")
cat("w =", w, "\n")
cat("result =", result, "\n")

# The native pipe operator chains operations left to right
nums <- c(4, 9, 16, 25)
nums |> sqrt() |> sum() |> print()  # sqrt, then sum, then print
