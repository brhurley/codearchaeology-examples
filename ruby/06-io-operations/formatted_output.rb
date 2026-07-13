name = "Ada"
score = 92.5

puts "Standard puts output"

# printf writes directly to standard output
printf("Name: %s, Score: %.1f\n", name, score)

# format returns a string instead of printing it
# %-10s left-justifies in 10 columns; %8.2f right-justifies in 8
formatted = format("%-10s|%8.2f|", name, score)
puts formatted

# The % operator formats a string against its arguments
puts "Line %04d" % 7
