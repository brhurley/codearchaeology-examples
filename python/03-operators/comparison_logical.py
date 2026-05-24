# Comparison operators return booleans
x = 10
y = 3

print("x == y :", x == y)
print("x != y :", x != y)
print("x >  y :", x > y)
print("x <  y :", x < y)
print("x >= y :", x >= y)
print("x <= y :", x <= y)

# Python allows chained comparisons
print("1 < x < 100 :", 1 < x < 100)

# Logical operators: and, or, not
logged_in = True
is_admin = False
print("logged_in and is_admin :", logged_in and is_admin)
print("logged_in or is_admin  :", logged_in or is_admin)
print("not logged_in          :", not logged_in)

# Membership and identity operators
nums = [1, 2, 3]
print("2 in nums      :", 2 in nums)
print("5 not in nums  :", 5 not in nums)
print("nums is nums   :", nums is nums)
