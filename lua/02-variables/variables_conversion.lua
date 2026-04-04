-- Type Coercion and Conversion

-- Automatic coercion: strings to numbers in arithmetic
local result = "10" + 5
print("'10' + 5 =", result, type(result))

-- But concatenation (..) coerces numbers to strings
local text = "Value: " .. 42
print(text, type(text))

-- Explicit conversion with tonumber()
local input = "3.14"
local num = tonumber(input)
print("tonumber('3.14'):", num, type(num))

-- tonumber() returns nil for invalid input (safe!)
local bad = tonumber("hello")
print("tonumber('hello'):", bad)

-- tonumber() with base for other number systems
local binary = tonumber("1010", 2)    -- binary to decimal
local octal = tonumber("77", 8)       -- octal to decimal
local hexval = tonumber("FF", 16)     -- hex to decimal
print("binary 1010:", binary)
print("octal 77:", octal)
print("hex FF:", hexval)

-- Explicit conversion with tostring()
local n = 42
local s = tostring(n)
print("tostring(42):", s, type(s))

-- Integer and float distinction (Lua 5.3+)
local int_val = 42
local float_val = 42.0
print("integer:", int_val, "is integer?", math.type(int_val))
print("float:", float_val, "is integer?", math.type(float_val))

-- Converting between integer and float
local as_float = int_val + 0.0
local as_int = math.floor(float_val)
print("to float:", as_float, math.type(as_float))
print("to int:", as_int, math.type(as_int))

-- Truthiness: only false and nil are falsy
-- 0, "", and empty tables are all truthy!
local values = {false, nil, 0, "", {}, true, 42}
local labels = {"false", "nil", "0", '""', "{}", "true", "42"}
print()
print("Truthiness in Lua:")
for i = 1, #labels do
    if values[i] then
        print("  " .. labels[i] .. " is truthy")
    else
        print("  " .. labels[i] .. " is falsy")
    end
end
