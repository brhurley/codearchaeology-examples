# case used as an expression to compute a letter grade
let score = 85
let letter =
  case score div 10
  of 10, 9: "A"
  of 8: "B"
  of 7: "C"
  of 6: "D"
  else: "F"
echo "Grade: ", letter

# combining conditionals - the classic FizzBuzz
for i in 1..15:
  if i mod 15 == 0:
    echo "FizzBuzz"
  elif i mod 3 == 0:
    echo "Fizz"
  elif i mod 5 == 0:
    echo "Buzz"
  else:
    echo i
