# Vectorized conditional with ifelse()
scores <- c(95, 62, 78, 40, 88)
results <- ifelse(scores >= 60, "Pass", "Fail")
print(results)

# switch() selects a branch based on a single value
grade_label <- function(letter) {
  switch(letter,
    A = "Excellent",
    B = "Good",
    C = "Average",
    "Unknown")  # the unnamed final argument is the default case
}

print(grade_label("A"))
print(grade_label("Z"))
