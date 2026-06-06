let day = 3

# A single branch can match several values
case day
of 1, 7:
  echo "Weekend"
of 2, 3, 4, 5, 6:
  echo "Weekday"
else:
  echo "Invalid day"

# case works on characters too
let grade = 'B'
case grade
of 'A': echo "Excellent"
of 'B': echo "Good"
of 'C': echo "Average"
else: echo "Needs improvement"
