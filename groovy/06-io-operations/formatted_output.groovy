// print does not add a newline; println does
print "No newline here. "
println "But this ends the line."

// String interpolation with GStrings
def name = "Groovy"
def version = 4.0
println "Language: ${name}, Version: ${version}"

// printf for C-style formatted output (%n is a platform newline)
printf("Name: %-10s Score: %5.2f%n", "Ada", 91.5)
printf("Hex: %x, Octal: %o, Char: %c%n", 255, 8, 65)

// sprintf returns a formatted String instead of printing it
def label = sprintf("[%03d]", 7)
println "Padded id: ${label}"

// Triple-quoted strings preserve line breaks; the trailing \ trims the first newline
def report = """\
Report
  Items: ${3}
  Status: OK"""
println report
