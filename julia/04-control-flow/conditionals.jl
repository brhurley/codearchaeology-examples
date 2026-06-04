# if / elseif / else
temperature = 18

if temperature > 30
    println("It's hot")
elseif temperature > 15
    println("It's mild")
else
    println("It's cold")
end

# if is an expression: it returns the value of the last evaluated branch
status = if temperature > 0
    "above freezing"
else
    "freezing or below"
end
println("Water is $status")

# Conditions must be Bool — Julia does NOT treat 0 or "" as false
if isodd(7)
    println("7 is odd")
end
