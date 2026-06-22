fn square(x: Int) -> Int:
    return x * x

fn cube(x: Int) -> Int:
    return x * x * x

# 'op' is a parameter whose type is itself a function
fn apply_to_each(op: fn(Int) -> Int, count: Int):
    for i in range(1, count + 1):
        print(op(i), end=" ")
    print()

# Apply a function to its own result
fn apply_twice(op: fn(Int) -> Int, value: Int) -> Int:
    return op(op(value))

def main():
    print("Squares 1-5:")
    apply_to_each(square, 5)

    print("Cubes 1-5:")
    apply_to_each(cube, 5)

    print("apply_twice(square, 3) =", apply_twice(square, 3))
    print("apply_twice(cube, 2) =", apply_twice(cube, 2))
