# Ternary (conditional) expression
score = 78
grade = "pass" if score >= 60 else "fail"
print(f"Result: {grade}")

# Structural pattern matching (Python 3.10+)
def describe(command):
    match command.split():
        case ["go", direction]:
            return f"Moving {direction}"
        case ["pick", "up", item]:
            return f"Picking up the {item}"
        case ["quit" | "exit"]:
            return "Goodbye!"
        case _:
            return "Unknown command"

print(describe("go north"))
print(describe("pick up sword"))
print(describe("quit"))
print(describe("dance"))
