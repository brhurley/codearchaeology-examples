// for..in over an inclusive range
printf "Countup: "
for i in 1..5 do
    printf "%d " i
printfn ""

// Ranges can include a step: start..step..finish
printf "Even numbers: "
for i in 0..2..10 do
    printf "%d " i
printfn ""

// while loop with a mutable counter
let mutable countdown = 5
printf "Countdown: "
while countdown > 0 do
    printf "%d " countdown
    countdown <- countdown - 1
printfn ""
