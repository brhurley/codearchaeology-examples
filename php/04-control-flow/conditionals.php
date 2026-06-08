<?php
$score = 82;

if ($score >= 90) {
    echo "Grade: A\n";
} elseif ($score >= 80) {
    echo "Grade: B\n";
} elseif ($score >= 70) {
    echo "Grade: C\n";
} else {
    echo "Grade: F\n";
}

// Truthiness: weak typing coerces values to booleans
$input = "0";
if ($input) {
    echo "Truthy\n";
} else {
    echo "Falsy: the string \"0\" is considered false\n";
}

// Logical operators combine conditions
$age = 25;
$hasTicket = true;
if ($age >= 18 && $hasTicket) {
    echo "Entry granted\n";
}
