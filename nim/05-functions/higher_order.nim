# Takes a procedure 'f' as a parameter and applies it twice
proc applyTwice(f: proc(x: int): int, value: int): int =
  f(f(value))

# A named procedure can be passed as an argument
proc increment(x: int): int = x + 1

echo "applyTwice(increment, 10) = ", applyTwice(increment, 10)

# An anonymous procedure (lambda) passed inline
echo "applyTwice(square, 5) = ", applyTwice(proc(x: int): int = x * x, 5)

# A closure: the returned proc captures 'amount' from its scope
proc makeAdder(amount: int): proc(x: int): int =
  proc(x: int): int = x + amount

let add10 = makeAdder(10)
echo "add10(7) = ", add10(7)
