-- A simple function with one parameter
local function greet(name)
    return "Hello, " .. name .. "!"
end

print(greet("Lua"))

-- Multiple parameters
local function add(a, b)
    return a + b
end

print(add(3, 4))

-- Multiple return values are a first-class Lua feature
local function minmax(a, b)
    if a < b then
        return a, b
    else
        return b, a
    end
end

local lo, hi = minmax(10, 3)
print("min =", lo, "max =", hi)
