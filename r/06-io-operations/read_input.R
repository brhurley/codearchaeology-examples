# Reading from standard input
con <- file("stdin")

cat("Enter your name: ")
name <- readLines(con, n = 1)

cat("Enter your age: ")
age <- as.integer(readLines(con, n = 1))

close(con)

cat(sprintf("%s will be %d next year.\n", name, age + 1L))
