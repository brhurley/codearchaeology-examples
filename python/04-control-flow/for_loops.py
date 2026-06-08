# Iterate directly over a list
languages = ["Python", "Fortran", "Lisp"]
for lang in languages:
    print(f"Exploring {lang}")

# range(start, stop) — stop is exclusive
print("Countdown:")
for n in range(3, 0, -1):
    print(n)

# enumerate gives index + value together
for index, lang in enumerate(languages, start=1):
    print(f"{index}. {lang}")

# Loop over a dictionary's key/value pairs
years = {"Python": 1991, "Fortran": 1957}
for name, year in years.items():
    print(f"{name} first appeared in {year}")
