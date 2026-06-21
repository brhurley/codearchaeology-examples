-- A higher-order function: it receives a function as an argument
local function apply(fn, value)
    return fn(value)
end

local function square(n)
    return n * n
end

print(apply(square, 6))

-- Anonymous functions can be passed inline
print(apply(function(n) return n + 1 end, 41))

-- A closure: make_counter returns a function that remembers `count`
local function make_counter()
    local count = 0
    return function()
        count = count + 1
        return count
    end
end

local next_id = make_counter()
print(next_id())
print(next_id())
print(next_id())

-- Each counter keeps its own independent state
local other = make_counter()
print(other())
