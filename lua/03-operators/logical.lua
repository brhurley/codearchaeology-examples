local x = 10
local y = 20

-- Relational operators
print("x == y :", x == y)   -- equal
print("x ~= y :", x ~= y)   -- not equal (note: ~= not !=)
print("x <  y :", x < y)
print("x >  y :", x > y)
print("x <= y :", x <= y)
print("x >= y :", x >= y)

-- Logical operators return one of their operands, not just true/false
print("true and 'hello' :", true and "hello")  -- "hello"
print("nil  and 'hello' :", nil and "hello")   -- nil
print("false or  'default' :", false or "default")  -- "default"
print("'first' or 'second' :", "first" or "second") -- "first"

-- Common idiom: default values via 'or'
local name = nil
local display = name or "Anonymous"
print("display =", display)

-- Truthiness: only nil and false are falsy
print("0 is truthy  :", 0 and "yes" or "no")
print("'' is truthy :", "" and "yes" or "no")
