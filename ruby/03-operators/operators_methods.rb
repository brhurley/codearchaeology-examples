# Operators are just methods in Ruby

# Calling + and <=> as explicit methods
puts 4.+(6)        # same as 4 + 6  -> 10
puts 10.<=>(3)     # same as 10 <=> 3 -> 1

# Because + is a method, you can define it on your own class
class Money
  attr_reader :cents

  def initialize(cents)
    @cents = cents
  end

  def +(other)
    Money.new(@cents + other.cents)
  end

  def to_s
    format("$%.2f", @cents / 100.0)
  end
end

wallet = Money.new(500) + Money.new(250)
puts wallet        # uses our custom + -> $7.50

# Safe navigation operator &. returns nil instead of raising on nil
missing = nil
puts missing&.upcase.inspect   # nil (no NoMethodError)

present = "matz"
puts present&.upcase           # MATZ
