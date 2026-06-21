local x = 10  -- local to this chunk

local function show()
    local y = 20      -- local to this function only
    counter = 100     -- no `local` keyword, so this is GLOBAL
    print("inside: x =", x, "y =", y)
end

show()
print("outside: x =", x)
print("global counter =", counter)

-- y was local to show(), so it is nil out here
print("y outside =", y)
