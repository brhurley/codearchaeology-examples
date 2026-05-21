-- Basic arithmetic
local a = 17
local b = 5

print("a + b  =", a + b)    -- Addition
print("a - b  =", a - b)    -- Subtraction
print("a * b  =", a * b)    -- Multiplication
print("a / b  =", a / b)    -- Float division (always returns float)
print("a // b =", a // b)   -- Floor division (since Lua 5.3)
print("a % b  =", a % b)    -- Modulo
print("a ^ b  =", a ^ b)    -- Exponentiation (always returns float)
print("-a     =", -a)       -- Unary minus

-- Integer vs float distinction in Lua 5.3+
print("Type of 10 / 2  :", math.type(10 / 2))    -- float (/ is float division)
print("Type of 10 // 2 :", math.type(10 // 2))   -- integer
print("Type of 2 ^ 3   :", math.type(2 ^ 3))     -- float
