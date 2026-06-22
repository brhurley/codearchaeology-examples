# A strict fn function: parameter and return types are mandatory
fn add(a: Int, b: Int) -> Int:
    return a + b

# A flexible def function, written here with explicit types
def multiply(a: Int, b: Int) -> Int:
    return a * b

# A function that returns nothing simply omits the '-> Type'
fn announce(name: String):
    print("Calling function:", name)

def main():
    announce("add")
    print("add(8, 5) =", add(8, 5))

    announce("multiply")
    print("multiply(6, 7) =", multiply(6, 7))
