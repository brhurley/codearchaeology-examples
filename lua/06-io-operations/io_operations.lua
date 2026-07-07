-- Open for writing ("w" creates the file or truncates an existing one)
local file = io.open("notes.txt", "w")
file:write("Lua I/O Demo\n")
file:write("Line 2 of 3\n")
file:write(string.format("Line %d of 3\n", 3))
file:close()
print("File written.")

-- Read the whole file at once with the "a" (all) format
local whole = io.open("notes.txt", "r")
local content = whole:read("a")
whole:close()
print("\nFull contents:")
io.write(content)

-- Iterate line by line; io.lines opens and closes the file for you
print("\nNumbered lines:")
local n = 0
for line in io.lines("notes.txt") do
    n = n + 1
    print(string.format("%d: %s", n, line))
end

-- Append mode ("a") adds to the end without overwriting
local append = io.open("notes.txt", "a")
append:write("Appended line\n")
append:close()

-- Count the lines now that we have appended one
local count = 0
for _ in io.lines("notes.txt") do
    count = count + 1
end
print("\nTotal lines now: " .. count)
