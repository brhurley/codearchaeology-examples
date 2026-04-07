def flexible_function():
    """In def functions, variables work like Python."""
    x = 42
    x = 99
    print("def - x:", x)

fn strict_function():
    """In fn functions, var and types are required."""
    var x: Int = 42
    x = 99
    print("fn - x:", x)

def main():
    print("=== def vs fn ===")
    flexible_function()
    strict_function()

    # --- Type conversions ---
    print("\n=== Type Conversions ===")

    # Int to Float64
    var i: Int = 42
    var f = Float64(i)
    print("Int 42 as Float64:", f)

    # Float64 to Int (truncates toward zero)
    var pi: Float64 = 7.75
    var truncated = Int(pi)
    print("Float64 7.75 as Int:", truncated)

    # Numeric to String
    var num: Int = 256
    var num_str = str(num)
    print("Int 256 as String:", num_str)

    # --- StringLiteral vs String ---
    print("\n=== StringLiteral vs String ===")
    var s: String = "hello"   # StringLiteral implicitly converts to String
    var s2: String = String("world")  # Explicit conversion
    print("s =", s)
    print("s2 =", s2)
    print("combined:", s + " " + s2)
