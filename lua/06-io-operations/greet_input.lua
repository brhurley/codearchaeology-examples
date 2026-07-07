io.write("Enter your name: ")
local name = io.read("l")      -- read a line, newline stripped

io.write("Enter a number: ")
local n = io.read("n")         -- read a number (returns a Lua number)

print("Hello, " .. name .. "!")
print("Its square is " .. (n * n))
