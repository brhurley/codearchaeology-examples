// Closure-based iteration and loop control

// times: run a closure a fixed number of times (0-indexed)
print "Squares: "
4.times { i ->
    print "${i * i} "
}
println()

// each: iterate over every element of a collection
[10, 20, 30].each { num ->
    println "Value: ${num}"
}

// eachWithIndex: get both the element and its index
["a", "b", "c"].eachWithIndex { item, idx ->
    println "${idx}: ${item}"
}

// continue: skip odd numbers
print "Evens under 10: "
for (i in 0..9) {
    if (i % 2 != 0) continue
    print "${i} "
}
println()

// break: stop at the first match
print "First multiple of 7: "
for (i in 1..100) {
    if (i % 7 == 0) {
        println i
        break
    }
}
