/* Conditionals in REXX */

/* Simple IF / ELSE */
temperature = 75
if temperature > 80 then
    say "It's hot outside"
else
    say "It's pleasant outside"

/* Multiple statements need DO ... END */
age = 20
if age >= 18 then do
    say "You are an adult"
    say "You can vote"
end
else do
    say "You are a minor"
end

/* Chained conditions with ELSE IF */
score = 85
if score >= 90 then
    say "Grade: A"
else if score >= 80 then
    say "Grade: B"
else if score >= 70 then
    say "Grade: C"
else
    say "Grade: F"
