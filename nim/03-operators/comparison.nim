let x = 10
let y = 20

echo "x == y: ", x == y
echo "x != y: ", x != y
echo "x <  y: ", x < y
echo "x <= y: ", x <= y
echo "x >  y: ", x > y
echo "x >= y: ", x >= y

# Chained logical operators
let inRange = x > 0 and x < 100
let outside = x < 0 or x > 100
echo "inRange: ", inRange
echo "outside: ", outside
echo "not inRange: ", not inRange
echo "true xor false: ", true xor false
