# Constants - must be uppercase, cannot be reassigned
MAX_RETRIES = 3
PI = 3.14159265358979
APP_NAME = "CodeArchaeology"
SUPPORTED_LANGUAGES = ["Crystal", "Ruby", "Go"]

puts "App: #{APP_NAME}"
puts "Max retries: #{MAX_RETRIES}"
puts "Pi: #{PI}"
puts "Languages: #{SUPPORTED_LANGUAGES.join(", ")}"

# Frozen string literal - strings are mutable by default in Crystal,
# but you can express intent through constants
GREETING = "Hello"

# Regular variables can be reassigned
counter = 0
counter = counter + 1
counter += 1
puts "Counter after two increments: #{counter}"

# Crystal also supports multiple assignment
x, y, z = 1, 2, 3
puts "x=#{x}, y=#{y}, z=#{z}"

# Swap values without a temporary variable
x, y = y, x
puts "After swap: x=#{x}, y=#{y}"
