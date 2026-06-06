# for loop over an inclusive range
for i in 1..5:
  echo "Count: ", i

# for loop over a sequence
let fruits = @["apple", "banana", "cherry"]
for fruit in fruits:
  echo "Fruit: ", fruit

# for loop with both index and value
for index, fruit in fruits:
  echo index, ": ", fruit

# while loop with manual decrement
var n = 3
while n > 0:
  echo "Countdown: ", n
  dec n

# countdown iterator walks values in reverse
for i in countdown(5, 1):
  echo "Down: ", i
