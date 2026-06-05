-- Numeric for: for var = start, stop[, step] do ... end
-- The range is inclusive of both endpoints.
print("Numeric for loop:")
for i = 1, 5 do
    io.write(i .. " ")
end
print()

-- A negative step counts downward
print("Countdown:")
for i = 3, 1, -1 do
    io.write(i .. " ")
end
print()

-- While loop: condition checked before each pass
print("While loop (powers of two):")
local n = 1
while n <= 16 do
    io.write(n .. " ")
    n = n * 2
end
print()

-- Repeat-until: body runs first, condition checked at the end.
-- Note the condition is the EXIT condition (loop stops when true).
print("Repeat-until:")
local count = 0
repeat
    count = count + 1
    io.write(count .. " ")
until count >= 3
print()

-- Generic for with ipairs: ordered iteration over an array-style table
print("ipairs over an array:")
local fruits = {"apple", "banana", "cherry"}
for index, fruit in ipairs(fruits) do
    print(index .. ": " .. fruit)
end
