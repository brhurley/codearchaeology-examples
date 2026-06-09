# for loop iterates over the elements of a vector
for (i in 1:5) {
  cat("Square of ", i, " is ", i^2, "\n", sep = "")
}

# while loop runs while its condition is TRUE
countdown <- 3
while (countdown > 0) {
  cat("Countdown: ", countdown, "\n", sep = "")
  countdown <- countdown - 1
}

# repeat loops until break; next skips an iteration
total <- 0
n <- 0
repeat {
  n <- n + 1
  if (n == 3) next   # skip adding 3
  if (n > 5) break   # stop after 5
  total <- total + n
}
cat("Sum (excluding 3): ", total, "\n", sep = "")
