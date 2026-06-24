# Local vs global scope

counter = 0  # module-level (global) variable

def increment():
    global counter      # rebind the global, not a new local
    counter += 1
    return counter

def local_demo():
    counter = 100       # a new local variable that shadows the global
    return counter

print(increment())   # 1
print(increment())   # 2
print(local_demo())  # 100
print(counter)       # 2 - local_demo never touched the global
