# subtotal and tax are local - they exist only during this call
def calculate_total(price : Float64, quantity : Int32) : Float64
  subtotal = price * quantity
  tax = subtotal * 0.08
  subtotal + tax
end

# Constants (uppercase) are accessible from any function
TAX_RATE = 0.08

def apply_tax(amount : Float64) : Float64
  amount + (amount * TAX_RATE)
end

puts calculate_total(10.0, 3)
puts apply_tax(50.0)

# Trying to read 'subtotal' here would be a compile error -
# it does not exist outside calculate_total:
# puts subtotal
