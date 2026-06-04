# Classic while loop
countdown = 3
while countdown > 0
    println("T-minus $countdown")
    global countdown -= 1   # 'global' needed at top-level script scope
end
println("Liftoff!")

# break: stop as soon as we find what we want
for n in 1:100
    if n^2 > 50
        println("First square over 50 is $(n^2) (n=$n)")
        break
    end
end

# continue: skip even numbers, print only odds
for n in 1:10
    if iseven(n)
        continue
    end
    print(n, " ")
end
println()
