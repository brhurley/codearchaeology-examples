# The type hierarchy - every type has a parent
println("=== Type Hierarchy ===")
println("Int64 <: Signed <: Integer <: Real <: Number")
println("  Int64 supertype: $(supertype(Int64))")
println("  Signed supertype: $(supertype(Signed))")
println("  Integer supertype: $(supertype(Integer))")
println("  Real supertype: $(supertype(Real))")

println()

# Subtype checks with <:
println("=== Subtype Checks ===")
println("Int64 <: Integer  => $(Int64 <: Integer)")
println("Float64 <: Integer => $(Float64 <: Integer)")
println("Int64 <: Number   => $(Int64 <: Number)")
println("String <: Number  => $(String <: Number)")

println()

# Multiple dispatch uses the type hierarchy
describe(x::Integer) = "$x is an integer"
describe(x::AbstractFloat) = "$x is a float"
describe(x::AbstractString) = "\"$x\" is a string"
describe(x::Bool) = "$x is a boolean"

# Bool is checked first because Bool <: Integer
# Julia dispatches to the most specific method
println("=== Multiple Dispatch on Types ===")
println(describe(42))
println(describe(3.14))
println(describe("hello"))
println(describe(true))

println()

# Constants with const
const MAX_ITERATIONS = 1000
const GRAVITY = 9.81
println("=== Constants ===")
println("MAX_ITERATIONS: $MAX_ITERATIONS")
println("GRAVITY: $GRAVITY")

println()

# Type conversions
println("=== Type Conversions ===")
# convert() - safe conversion
int_val = convert(Int64, 3.0)
println("convert(Int64, 3.0) = $int_val ($(typeof(int_val)))")

# Constructor-style conversion
float_val = Float64(42)
println("Float64(42) = $float_val ($(typeof(float_val)))")

# parse() - string to number
parsed = parse(Int64, "123")
println("parse(Int64, \"123\") = $parsed ($(typeof(parsed)))")

# string() - anything to string
str_val = string(42, " is the answer")
println("string(42, \" is the answer\") = \"$str_val\"")

# Round, floor, ceil
println("round(Int64, 3.7) = $(round(Int64, 3.7))")
println("floor(Int64, 3.7) = $(floor(Int64, 3.7))")
println("ceil(Int64, 3.2) = $(ceil(Int64, 3.2))")

println()

# Tuples and NamedTuples - immutable collections
println("=== Tuples ===")
point = (3.0, 4.0)
println("point: $point ($(typeof(point)))")
println("x = $(point[1]), y = $(point[2])")

named = (x=3.0, y=4.0, label="origin")
println("named: $named")
println("named.label = $(named.label)")

println()

# Arrays - Julia's workhorse collection
println("=== Arrays ===")
nums = [1, 2, 3, 4, 5]
println("nums: $nums ($(typeof(nums)))")

mixed = Any[1, "two", 3.0, true]
println("mixed: $mixed ($(typeof(mixed)))")

# Ranges
r = 1:5
println("range 1:5: $r ($(typeof(r)))")
println("collected: $(collect(r))")

# Dictionaries
println()
println("=== Dictionaries ===")
ages = Dict("Alice" => 30, "Bob" => 25)
println("ages: $ages")
println("Alice's age: $(ages["Alice"])")
