let filename = "notes.txt"

# Write a whole string at once (creates or overwrites the file)
writeFile(filename, "First line\nSecond line\n")

# Append with an explicit file handle opened in append mode
let f = open(filename, fmAppend)
f.writeLine("Third line (appended)")
f.close()

# Read the entire file back as a single string
let contents = readFile(filename)
echo "--- Full contents ---"
echo contents

# Read the file one line at a time (newlines are stripped)
echo "--- Line by line ---"
for line in lines(filename):
  echo "> ", line
