-- Bitwise operators (Lua 5.3+, integers only)
local a = 0xF0   -- 11110000
local b = 0x0F   -- 00001111

print(string.format("a & b  = 0x%02X", a & b))   -- AND
print(string.format("a | b  = 0x%02X", a | b))   -- OR
print(string.format("a ~ b  = 0x%02X", a ~ b))   -- XOR (binary ~)
print(string.format("~a     = 0x%X",  ~a & 0xFF)) -- NOT (unary ~), masked
print(string.format("1 << 4 = 0x%02X", 1 << 4))  -- left shift
print(string.format("a >> 4 = 0x%02X", a >> 4))  -- right shift

-- Precedence demonstrations
print("2 + 3 * 4    =", 2 + 3 * 4)     -- 14, not 20
print("2 ^ 3 ^ 2    =", 2 ^ 3 ^ 2)     -- 512 (right-assoc: 2^(3^2) = 2^9)
print("-2 ^ 2       =", -2 ^ 2)        -- -4 (^ binds tighter than unary -)
print("'x' .. 1 + 2 =", "x" .. 1 + 2)  -- "x3" (+ binds tighter than ..)

-- Lua has no compound assignment: no +=, -=, *= etc.
local n = 10
n = n + 1            -- write it out long-form
print("n after n = n + 1 :", n)
