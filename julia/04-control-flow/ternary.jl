score = 72

# Ternary operator: condition ? value_if_true : value_if_false
grade = score >= 60 ? "pass" : "fail"
println("Result: $grade")

# Short-circuit && acts like "if true, then do"
x = 10
x > 0 && println("x is positive")

# Short-circuit || acts like "if false, then do"
name = ""
isempty(name) || println("Name was provided")

# Ternary expressions can be chained (read top to bottom)
n = 0
sign_word = n > 0 ? "positive" :
            n < 0 ? "negative" : "zero"
println("$n is $sign_word")
