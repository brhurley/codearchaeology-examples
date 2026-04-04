-- Local vs Global Variables

-- Global variable (avoid in real code)
message = "I'm global"

-- Local variable (preferred)
local secret = "I'm local"

print("global:", message)
print("local:", secret)

-- Scope demonstration with blocks
do
    local inner = "only visible here"
    print("inside block:", inner)
end
-- print(inner)  -- Would print nil: inner is out of scope

-- Local variables shadow outer ones
local value = "outer"
do
    local value = "inner"
    print("shadowed:", value)
end
print("original:", value)

-- Multiple assignment
local a, b, c = 1, "two", true
print("multiple:", a, b, c)

-- Extra values are discarded, missing values become nil
local x, y = 10, 20, 30   -- 30 is discarded
local p, q = "only one"    -- q is nil
print("extra discarded:", x, y)
print("missing is nil:", p, q)

-- Swapping values (no temp variable needed)
local first, second = "alpha", "beta"
first, second = second, first
print("swapped:", first, second)

-- Lua 5.4: const variables (cannot be reassigned)
local MAX <const> = 100
local PI <const> = 3.14159
print("const MAX:", MAX)
print("const PI:", PI)
-- MAX = 200  -- Would cause a compile error!
