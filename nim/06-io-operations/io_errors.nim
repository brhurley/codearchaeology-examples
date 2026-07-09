import std/strutils

proc readConfig(path: string): string =
  try:
    result = readFile(path)
  except IOError as e:
    echo "Could not read ", path, ": ", e.msg
    result = ""

# This file does not exist, so readFile raises IOError
let missing = readConfig("does_not_exist.txt")
echo "Length of missing file contents: ", missing.len

# Create a file, then read it back successfully
writeFile("config.txt", "setting=on\n")
let config = readConfig("config.txt")
echo "Config: ", config.strip()
