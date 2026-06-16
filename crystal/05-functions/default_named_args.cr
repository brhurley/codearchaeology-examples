# 'exponent' defaults to 2 when not supplied
def power(base : Int32, exponent : Int32 = 2) : Int32
  base ** exponent
end

# Two parameters with defaults, callable by name
def format_price(amount : Float64, currency : String = "USD", decimals : Int32 = 2) : String
  "#{currency} #{amount.round(decimals)}"
end

puts power(5)                              # uses the default exponent of 2
puts power(2, 10)                          # explicit exponent
puts format_price(19.95)                   # all defaults
puts format_price(8.5, currency: "EUR")   # skip 'currency'? no - name it
puts format_price(100.0, decimals: 0)      # skip 'currency', set 'decimals'
