-- break stops the loop as soon as a condition is met
print("Finding first multiple of 7:")
for i = 1, 100 do
    if i % 7 == 0 then
        print("Found: " .. i)
        break
    end
end

-- Lua has no 'continue'. Use goto with a label to skip to the next pass.
print("Odd numbers from 1 to 10:")
for i = 1, 10 do
    if i % 2 == 0 then
        goto continue
    end
    io.write(i .. " ")
    ::continue::
end
print()

-- break only exits the INNERMOST loop
print("Products, skipping any that exceed 6:")
for a = 1, 3 do
    for b = 1, 3 do
        if a * b > 6 then
            break
        end
        io.write(a .. "x" .. b .. "=" .. (a * b) .. "  ")
    end
end
print()
