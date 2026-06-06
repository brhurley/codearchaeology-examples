let temperature = 25

# Standard if / elif / else branching
if temperature < 0:
  echo "Freezing"
elif temperature < 15:
  echo "Cold"
elif temperature < 25:
  echo "Mild"
else:
  echo "Warm"

# 'if' as an expression - no ternary operator needed
let status = if temperature >= 18: "comfortable" else: "uncomfortable"
echo "Status: ", status
