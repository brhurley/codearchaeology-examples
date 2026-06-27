# Default positional argument
def power(base, exponent = 2)
  base ** exponent
end

puts power(5)      # uses default exponent of 2
puts power(2, 10)  # overrides the default

# Keyword arguments (named, order-independent)
def describe(name:, role: "developer")
  "#{name} is a #{role}"
end

puts describe(name: "Matz", role: "creator")
puts describe(role: "maintainer", name: "Alice")
puts describe(name: "Bob")   # role falls back to its default
