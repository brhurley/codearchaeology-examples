# echo joins all its arguments and adds a trailing newline
echo "echo adds a newline and can join args: ", 42, " ", true

# stdout.write does NOT add a newline
stdout.write("No newline here... ")
stdout.write("continued on same line\n")

# writeLine adds its own newline for you
stdout.writeLine("writeLine adds its own newline")

# write accepts multiple arguments in one call
stdout.write("a", "b", "c", "\n")
