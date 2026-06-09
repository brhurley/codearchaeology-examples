# Conditionals in R
temperature <- 18

if (temperature > 25) {
  print("It's hot")
} else if (temperature >= 15) {
  print("It's mild")
} else {
  print("It's cold")
}

# In R, if is an expression - it returns a value you can assign
status <- if (temperature >= 15) "comfortable" else "chilly"
print(paste("Status:", status))
