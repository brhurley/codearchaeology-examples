v = [1, 2, 3, 4]
w = [10, 20, 30, 40]

# Element-wise arithmetic
println(v .+ w)      # [11, 22, 33, 44]
println(v .* w)      # [10, 40, 90, 160]
println(v .^ 2)      # [1, 4, 9, 16]

# Scalar broadcasts against the array
println(v .+ 100)    # [101, 102, 103, 104]

# Element-wise comparison, reduced with any/all
println(any(v .> 3)) # true
println(all(v .> 0)) # true

# Functions broadcast too with the dot
println(sqrt.(v))    # [1.0, 1.414..., 1.732..., 2.0]

# Fused broadcasting: this is one pass, no temporaries
result = 2 .* v .+ 1
println(result)
