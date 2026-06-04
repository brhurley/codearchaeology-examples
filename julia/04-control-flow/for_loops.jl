# Iterate over an inclusive range (1 through 5)
for i in 1:5
    print(i, " ")
end
println()

# Step ranges: 0, 2, 4, 6, 8, 10
for even in 0:2:10
    print(even, " ")
end
println()

# Iterate directly over a collection's elements
fruits = ["apple", "banana", "cherry"]
for fruit in fruits
    println("Fruit: $fruit")
end

# enumerate gives index + value together (indices start at 1)
for (i, fruit) in enumerate(fruits)
    println("$i. $fruit")
end

# Iterate over a dictionary's key => value pairs.
# Dicts are unordered, so sort the keys for predictable output.
scores = Dict("Alice" => 90, "Bob" => 85)
for name in sort(collect(keys(scores)))
    println("$name scored $(scores[name])")
end
