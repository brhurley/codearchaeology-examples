# Logical (short-circuiting)
println(true && false)
println(true || false)
println(!true)

# Short-circuit is also used for guarded actions
x = 7
x > 0 && println("positive")
x < 0 || println("not negative")

# Bitwise operators on integers
println(0b1100 & 0b1010)   # AND -> 0b1000 = 8
println(0b1100 | 0b1010)   # OR  -> 0b1110 = 14
println(0b1100 ⊻ 0b1010)   # XOR -> 0b0110 = 6  (also: xor())
println(~0b1100 & 0xff)    # NOT lower byte -> 243
println(1 << 4)            # left shift -> 16
