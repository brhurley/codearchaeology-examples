# Variable Scope in Julia

# A global variable
counter = 0

function increment_local()
    counter = 5          # creates a NEW local variable; the global is untouched
    return counter
end

println("Local result: ", increment_local())
println("Global counter: ", counter)

# Use `global` to modify a global variable from inside a function
function increment_global()
    global counter
    counter += 1
    return counter
end

println("After increment_global: ", increment_global())
println("Global counter now: ", counter)

# Local variables are not visible outside the function
function compute()
    temp = 100           # local to compute
    return temp * 2
end

println("compute() = ", compute())
