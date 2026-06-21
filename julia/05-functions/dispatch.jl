# Multiple Dispatch in Julia

# Several methods of one function, chosen by argument types
collide(a::Int, b::Int) = "two integers: $(a + b)"
collide(a::String, b::String) = "two strings: $a$b"
collide(a::Int, b::String) = "int and string: $a and $b"

println(collide(1, 2))
println(collide("a", "b"))
println(collide(7, "hello"))

# Dispatch on custom types
struct Dog end
struct Cat end

speak(::Dog) = "Woof!"
speak(::Cat) = "Meow!"

println(speak(Dog()))
println(speak(Cat()))

# Count how many methods a function has
println("Methods of collide: ", length(methods(collide)))

# A generic fallback: less specific methods catch everything else
describe_num(x::Integer) = "$x is an integer"
describe_num(x::AbstractFloat) = "$x is a float"
describe_num(x) = "$x is something else"

println(describe_num(42))
println(describe_num(3.14))
println(describe_num("text"))
