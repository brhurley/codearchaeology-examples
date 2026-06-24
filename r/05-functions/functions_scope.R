# Variables created inside a function are local
counter <- 10

increment <- function() {
  counter <- counter + 1   # creates a LOCAL copy, global is untouched
  cat("Inside function:", counter, "\n")
}

increment()
cat("Outside function:", counter, "\n")

# The <<- operator modifies a variable in the enclosing scope
make_deposit <- function(amount) {
  counter <<- counter + amount   # modifies the GLOBAL counter
}

make_deposit(5)
cat("After deposit:", counter, "\n")
