# Operators work element-wise on vectors
v1 <- c(1, 2, 3, 4)
v2 <- c(10, 20, 30, 40)

print(v1 + v2)   # paired element-wise addition
print(v1 * 2)    # 2 is recycled across all elements
print(v2 / v1)   # element-wise division
print(v1 ^ 2)    # square each element
