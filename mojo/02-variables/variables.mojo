def main():
    # --- Explicit type annotations ---
    var x: Int = 42
    var temperature: Float64 = 98.5
    var name: String = "Mojo"
    var active: Bool = True

    print("=== Typed Variables ===")
    print("x =", x)
    print("temperature =", temperature)
    print("name =", name)
    print("active =", active)

    # --- Type inference: the compiler deduces the type ---
    var count = 100          # Int
    var ratio = 0.75         # Float64
    var language = String("CodeArchaeology")  # String
    var done = False         # Bool

    print("\n=== Inferred Types ===")
    print("count =", count)
    print("ratio =", ratio)
    print("language =", language)
    print("done =", done)

    # --- Mutability: var declares mutable variables ---
    var score = 0
    print("\n=== Mutability ===")
    print("initial score:", score)
    score = 100
    score += 50
    print("updated score:", score)

    # --- Compile-time constants with alias ---
    alias MAX_PLAYERS = 4
    alias GRAVITY = 9.5

    print("\n=== Compile-Time Constants (alias) ===")
    print("MAX_PLAYERS =", MAX_PLAYERS)
    print("GRAVITY =", GRAVITY)
