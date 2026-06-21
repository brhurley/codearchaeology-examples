-- The `or` idiom supplies a default when an argument is omitted
local function greet(name, greeting)
    greeting = greeting or "Hello"
    return greeting .. ", " .. name .. "!"
end

print(greet("Ada"))
print(greet("Ada", "Welcome"))

-- Variadic functions collect extra arguments with ...
local function sum(...)
    local total = 0
    for _, n in ipairs({...}) do
        total = total + n
    end
    return total
end

print(sum(1, 2, 3, 4, 5))

-- select("#", ...) counts how many arguments were passed
local function count(...)
    return select("#", ...)
end

print(count("a", "b", "c"))
