# File I/O in R

# --- Writing lines to a text file ---
notes <- c("First observation", "Second observation", "Third observation")
writeLines(notes, "notes.txt")
cat(sprintf("Wrote %d lines to notes.txt\n", length(notes)))

# --- Reading the file back ---
cat("\nContents of notes.txt:\n")
content <- readLines("notes.txt")
for (i in seq_along(content)) {
  cat(sprintf("%d: %s\n", i, content[i]))
}

# --- Appending to a file ---
cat("A later note\n", file = "notes.txt", append = TRUE)
cat(sprintf("\nAfter appending, the file has %d lines\n",
            length(readLines("notes.txt"))))

# --- Writing and reading tabular data (R's specialty) ---
cat("\nData frame round-trip:\n")
cities <- data.frame(
  city = c("Auckland", "Vienna", "Boston"),
  temp = c(19.5, 12.0, 8.3)
)
write.csv(cities, "cities.csv", row.names = FALSE)
loaded <- read.csv("cities.csv")
print(loaded)
cat(sprintf("Mean temperature: %.5f\n", mean(loaded$temp)))
