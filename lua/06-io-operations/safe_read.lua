local filename = "missing.txt"

-- io.open returns nil + message on failure instead of raising
local file, err = io.open(filename, "r")
if file then
    local data = file:read("a")
    file:close()
    print(data)
else
    print("Error: could not open '" .. filename .. "'")
    print("Reason from OS: " .. err)
end

-- assert() promotes the nil+message convention into a raised error,
-- which pcall then catches so the script keeps running
local ok = pcall(function()
    local f = assert(io.open(filename, "r"))
    f:close()
end)
print("pcall succeeded: " .. tostring(ok))
