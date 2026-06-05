-- Branch on a value
local temperature = 22

if temperature > 30 then
    print("It's hot")
elseif temperature >= 15 then
    print("It's mild")
else
    print("It's cold")
end

-- Truthiness: only nil and false are falsy.
-- 0 and "" are TRUTHY in Lua (unlike C, Python, or JavaScript).
local value = 0
if value then
    print("0 is truthy in Lua")
end

-- A nil value is falsy, so 'not nil' is true
local name = nil
if not name then
    print("name is not set")
end

-- Logical operators are spelled out: and / or / not
local age = 20
if age >= 18 and age < 65 then
    print("Working age")
end

-- Lua has NO ternary operator. The idiom is: cond and a or b
local status = (age >= 18) and "adult" or "minor"
print("Status: " .. status)
