# Formatted output in R

# print() shows the [1] index prefix and quotes strings
print("Statistical computing")
print(c(1.5, 2.5, 3.5))

# cat() joins values with a space separator, no quotes or index
# fill = TRUE adds a trailing newline for us
cat("Values:", 1, 2, 3, fill = TRUE)

# sprintf() gives C-style format control
cat(sprintf("Integer: %d\n", 42L))
cat(sprintf("Float:   %.3f\n", 2 / 3))
cat(sprintf("Percent: %5.1f%%\n", 87.5))
cat(sprintf("Zero-pad: %08.2f\n", 3.14))

# paste() builds strings; paste0() uses no separator
label <- paste("R", "version", "4.4.2")
cat(label, fill = TRUE)
cat(paste0("file", "_", "name", ".csv"), fill = TRUE)
