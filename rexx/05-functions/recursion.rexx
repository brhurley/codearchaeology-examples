/* Recursion in REXX: a routine that calls itself */

/* Classic factorial: n! = n * (n-1)! */
do n = 1 to 6
  say n"! =" factorial(n)
end

say "---"

/* Build the first 10 Fibonacci numbers */
line = ""
do i = 0 to 9
  line = line fib(i)
end
say strip(line)

exit

factorial: procedure
  parse arg n
  if n <= 1 then
    return 1
  return n * factorial(n - 1)

fib: procedure
  parse arg n
  if n < 2 then
    return n
  return fib(n - 1) + fib(n - 2)
