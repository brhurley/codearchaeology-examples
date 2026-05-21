local greeting = "Hello"
local target = "Lua"

-- Concatenation with ..
local message = greeting .. ", " .. target .. "!"
print(message)

-- Numbers auto-convert during concatenation
local version = 5.4
print("Lua version: " .. version)

-- Length operator # on strings
print("length of 'Hello' =", #"Hello")
print("length of message =", #message)

-- Length operator # on a sequence table
local fruits = {"apple", "banana", "cherry", "date"}
print("number of fruits =", #fruits)

-- Chaining concatenations
local parts = "a" .. "b" .. "c" .. "d"
print("parts =", parts)
