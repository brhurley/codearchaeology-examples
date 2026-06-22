# 'exponent' defaults to 2 when the caller omits it
fn power(base: Int, exponent: Int = 2) -> Int:
    var result = 1
    for _ in range(exponent):
        result *= base
    return result

# Several defaults at once
fn greet(name: String, greeting: String = "Hello", punctuation: String = "!") -> String:
    return greeting + ", " + name + punctuation

def main():
    print("power(5) =", power(5))          # uses the default exponent of 2
    print("power(2, 10) =", power(2, 10))  # overrides the default

    # Arguments can be passed by keyword, skipping earlier optional ones
    print(greet("Mojo"))
    print(greet("Ada", greeting="Welcome"))
    print(greet("Grace", punctuation="."))
