/* Subroutines: invoked with CALL, return value lands in RESULT */

/* CALL runs a routine; its RETURN value goes into the variable RESULT */
call describe 7
say result

call describe 42
say result

/* ARG() reports how many arguments were passed; ARG(i) reads the i-th */
call sum_all 10, 20, 30
say "Sum is" result

exit

/* describe: classify a number as even or odd */
describe: procedure
  parse arg n
  if n // 2 = 0 then
    return n "is even"
  else
    return n "is odd"

/* sum_all: add up however many arguments were passed */
sum_all: procedure
  total = 0
  do i = 1 to arg()
    total = total + arg(i)
  end
  return total
