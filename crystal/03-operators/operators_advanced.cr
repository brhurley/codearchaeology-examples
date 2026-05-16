# Compound assignment
score = 10
score += 5
score *= 2
puts "score = #{score}"

# Conditional assignment - only assigns when target is nil/false
greeting : String? = nil
greeting ||= "Hello"
greeting ||= "Ignored"   # not assigned, greeting is already truthy
puts "greeting = #{greeting}"

# Ranges
inclusive = 1..5      # 1, 2, 3, 4, 5
exclusive = 1...5     # 1, 2, 3, 4
puts "inclusive sum = #{inclusive.sum}"
puts "exclusive to_a = #{exclusive.to_a}"

# Operators are methods - overload + on your own type
struct Vector
  getter x : Int32, y : Int32

  def initialize(@x, @y)
  end

  def +(other : Vector) : Vector
    Vector.new(@x + other.x, @y + other.y)
  end

  def to_s(io : IO) : Nil
    io << "(" << @x << ", " << @y << ")"
  end
end

v = Vector.new(1, 2) + Vector.new(3, 4)
puts "v = #{v}"

# Operator precedence: * binds tighter than +
puts "2 + 3 * 4    = #{2 + 3 * 4}"
puts "(2 + 3) * 4  = #{(2 + 3) * 4}"
