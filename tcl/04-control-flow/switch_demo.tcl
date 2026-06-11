# Multi-way branching with switch
set day "Wed"

switch $day {
    "Mon" -
    "Tue" -
    "Wed" -
    "Thu" -
    "Fri" {
        puts "$day is a weekday"
    }
    "Sat" -
    "Sun" {
        puts "$day is the weekend"
    }
    default {
        puts "Unknown day: $day"
    }
}

# Glob-style matching with -glob
set filename "report.txt"
switch -glob $filename {
    "*.txt" { puts "Text file" }
    "*.tcl" { puts "Tcl script" }
    default { puts "Unknown type" }
}
