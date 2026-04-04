-- Lua's Eight Basic Types

-- nil: the absence of a value
local nothing = nil
print("nil:", nothing, type(nothing))

-- boolean: true or false (only false and nil are falsy)
local active = true
local deleted = false
print("boolean:", active, type(active))

-- number: integers and floats (unified in Lua 5.3+)
local count = 42           -- integer
local pi = 3.14159         -- float
local big = 1e10           -- scientific notation (float)
local hex = 0xFF           -- hexadecimal (integer 255)
print("integer:", count, type(count))
print("float:", pi, type(pi))

-- string: immutable sequences of bytes
local greeting = "Hello, Lua"
local multiline = [[
This is a
multiline string]]
local length = #greeting   -- # operator gives string length
print("string:", greeting, type(greeting))
print("string length:", length)

-- function: first-class values
local square = function(x) return x * x end
print("function:", square, type(square))
print("square(7):", square(7))

-- table: the universal data structure
local colors = {"red", "green", "blue"}
local point = {x = 10, y = 20}
print("table:", colors, type(colors))
print("point.x:", point.x)

-- type() always returns a string
print()
print("type() returns:", type(type(42)))
