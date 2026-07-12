# Graceful I/O error handling

read_safely <- function(path) {
  if (!file.exists(path)) {
    cat(sprintf("File '%s' does not exist.\n", path))
    return(invisible(NULL))
  }
  lines <- readLines(path)
  cat(sprintf("Read %d line(s) from %s\n", length(lines), path))
}

# tryCatch turns a fatal read error into a handled message
result <- tryCatch(
  read.csv("missing.csv"),
  error = function(e) {
    cat("Could not read missing.csv (handled gracefully)\n")
    NULL
  }
)

read_safely("missing.txt")
